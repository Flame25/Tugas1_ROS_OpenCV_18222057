#!/usr/bin/env python

import rospy
from testing_package.msg import DronePos  # Import the custom message type

def commander_callback(data):
    rospy.loginfo("Received drone status: {}".format(data))
    if(data.x == 1000): 
        rospy.signal_shutdown("Time Out")
    
def commander_node():
    rospy.init_node('commander', anonymous=True)
    rospy.Subscriber('/drone_status', DronePos, commander_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        commander_node()
    except rospy.ROSInterruptException:
        pass
