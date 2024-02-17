#include "ros/ros.h"
#include "testing_package/DronePos.h"
#include "commander.hpp"

void Commander::commanderCallBack(const testing_package::DronePos::ConstPtr &msg) {
  ROS_INFO("Received drone status: %f, %f, %f, %s", msg->x, msg->y, msg->z,
           msg->status.c_str());
}
Commander::Commander():nh(), sub(nh.subscribe("/drone_status", 10, &Commander::commanderCallBack,
                             this)) {}

void Commander::Spin() { ros::spin(); }

int main(int argc, char **argv) {
  ros::init(argc, argv, "commander");
  Commander commander;
  commander.Spin();
  return 0;
}
