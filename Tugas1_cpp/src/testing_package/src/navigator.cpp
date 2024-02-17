#include "navigator.hpp"
#include "ros/ros.h"
#include "testing_package/DronePos.h"

Navigator::Navigator(int r)
    : nh(), pub(nh.advertise<testing_package::DronePos>("/drone_status", 10)),
      rate(r),
      sub(nh.subscribe("/land_cmd", 10, &Navigator::landCommandCallback, this)),
      land_command_processed(false), stopX(false), stopY(false) {}

void Navigator::landCommandCallback(
    const testing_package::DronePos::ConstPtr &msg) {
  if (msg->status == "stop x") {
    stopX = true;
  }
  if (msg->status == "stop y") {
    stopY = true;
  }
  if (msg->status == "start Landing" && !land_command_processed) {
    land_command_processed = true;
    ROS_INFO("Land command processed. Stopping the publishing loop.");
  }
  while (ros::ok() && drone_pos.z >= 0 && land_command_processed) {
    if (drone_pos.z == 0) {
      drone_pos.status = "Land";
    } else {
      drone_pos.status = "Landing";
    }

    ROS_INFO("Publishing drone status: %f, %f, %f, %s", drone_pos.x,
             drone_pos.y, drone_pos.z, drone_pos.status.c_str());
    pub.publish(drone_pos);
    drone_pos.z -= 1;

    ros::spinOnce(); // Process callbacks
    rate.sleep();
  }
}

void Navigator::spin() {
  while (ros::ok() && !land_command_processed) {
    if (drone_pos.x > 1000 || drone_pos.y > 1000) {
      ros::shutdown();
    }

    if (drone_pos.z >= 1 && drone_pos.z <= 9) {
      drone_pos.status = "Take Off";
    } else if (drone_pos.z == 10) {
      drone_pos.status = "Fly";
    } else {
      drone_pos.status = "Land";
    }

    ROS_INFO("Publishing drone status: %f, %f, %f, %s", drone_pos.x,
             drone_pos.y, drone_pos.z, drone_pos.status.c_str());
    pub.publish(drone_pos);
    if (!stopX) {
      drone_pos.x += 1;
    }
    if (!stopY) {
      drone_pos.y -= 1;
    }
    if (drone_pos.z != 10) {
      drone_pos.z += 1;
    }

    ros::spinOnce(); // Process callbacks
    rate.sleep();

    // Check the flag and break the loop if land command is processed
    if (land_command_processed) {
      break;
    }
  }
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "navigator");
  Navigator navigator(10);

  // Use async spinner to allow multiple threads
  ros::AsyncSpinner spinner(2); // 2 threads: 1 for publisher, 1 for subscriber
  spinner.start();

  // Concurrently publish drone status and subscribe to land commands
  navigator.spin();

  return 0;
}
