#include "ros/ros.h"
#include "testing_package/DronePos.h"

class Navigator {
private:
  ros::NodeHandle nh;
  ros::Publisher pub;
  ros::Rate rate;
  ros::Subscriber sub;
  bool land_command_processed;
  testing_package::DronePos drone_pos; 
  bool stopX; 
  bool stopY;
public:
  Navigator(int r);
  void publishDroneStatus();
  void landCommandCallback(const testing_package::DronePos::ConstPtr &msg);
  void spin();
};
