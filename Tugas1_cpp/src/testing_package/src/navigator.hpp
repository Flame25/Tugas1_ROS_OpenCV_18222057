#include "ros/ros.h"

class Navigator {
private:
  ros::NodeHandle nh;
  ros::Publisher pub;
  ros::Rate rate;

public:
  Navigator(int r);
  void publishDroneStatus();
};
