#include "ros/ros.h"
#include "testing_package/DronePos.h"
#include "testing_package/Land.h"
class Commander {
private:
  ros::NodeHandle nh;
  ros::Subscriber sub;
  ros::ServiceServer service;
  ros::ServiceClient service_client;
  ros::Publisher pub; 
  bool droneStop;
public:
  Commander();
  void commanderCallBack(const testing_package::DronePos::ConstPtr &msg);
  void Spin();
  bool handleLandRequest(testing_package::Land::Request &req, testing_package::Land::Response &res);
};
