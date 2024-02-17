#include "commander.hpp"
#include "testing_package/DronePos.h"
#include "testing_package/Land.h"

void Commander::commanderCallBack(
    const testing_package::DronePos::ConstPtr &msg) {
  testing_package::DronePos newDrone;
  newDrone.x = msg->x;
  newDrone.y = msg->y;
  newDrone.z = msg->z;
  if (msg->x == 498) { // There is a delay, so the drone will come to a stop
                       // when x reaches 5
    newDrone.status = "stop x";
    pub.publish(newDrone);
  }
  if (msg->y == -398) {
    newDrone.status = "stop y";
    pub.publish(newDrone);
  }
  if (msg->x >= 500 && msg->y <= -400 && !droneStop) {
    droneStop = true;
    ROS_INFO("Calling land service...");
    testing_package::Land srv;
    srv.request.command = "land";
    if (this->service_client.call(srv)) {
      ROS_INFO("Land service response: %s", srv.response.response.c_str());
    } else {
      ROS_ERROR("Failed to call land service");
    }
  }
  ROS_INFO("Received drone status: %f, %f, %f, %s", msg->x, msg->y, msg->z,
           msg->status.c_str());
}

Commander::Commander()
    : nh(), sub(nh.subscribe("/drone_status", 10, &Commander::commanderCallBack,
                             this)),
      droneStop(false),
      service_client(nh.serviceClient<testing_package::Land>("land_srv")),
      service(
          nh.advertiseService("land_srv", &Commander::handleLandRequest, this)),
      pub(nh.advertise<testing_package::DronePos>("/land_cmd", 10)) {}

void Commander::Spin() {

  // Use an asynchronous spinner with two threads
  ros::AsyncSpinner spinner(2);
  spinner.start();

  // Block until shutdown signal received
  ros::waitForShutdown();
}

bool Commander::handleLandRequest(testing_package::Land::Request &req,
                                  testing_package::Land::Response &res) {
  ROS_INFO("Received land command. Landing the drone.");
  testing_package::DronePos newDrone;
  newDrone.status = "start Landing";
  pub.publish(newDrone);
  res.response = "success"; // Set the response

  return true;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "commander");
  Commander cmd;
  cmd.Spin(); // Use the Spin() function instead of ros::spin()
  return 0;
}
