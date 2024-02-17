#include "ros/ros.h"
#include "testing_package/DronePos.h" 
#include "navigator.hpp"


Navigator::Navigator(int r):nh(), pub(nh.advertise<testing_package::DronePos>("/drone_status", 10)), rate(r){

}
void Navigator::publishDroneStatus() {
  testing_package::DronePos drone_pos;
  drone_pos.x = 0;
  drone_pos.y = 0;
  drone_pos.z = 0;
  while (ros::ok()) {
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
    drone_pos.x += 1;
    drone_pos.y -= 1;
    if (drone_pos.z != 10) {
      drone_pos.z += 1;
    }
    rate.sleep();
    ros::spinOnce();
  }
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "navigator");
  Navigator navigator(6);
  navigator.publishDroneStatus();
  return 0;
}
