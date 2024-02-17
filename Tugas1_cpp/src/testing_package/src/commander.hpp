#include "ros/ros.h"
#include "testing_package/DronePos.h"
class Commander {
private:
  ros::NodeHandle nh;
  ros::Subscriber sub;

public:
  Commander();
  void commanderCallBack(const testing_package::DronePos::ConstPtr &msg);
  void Spin();
};
