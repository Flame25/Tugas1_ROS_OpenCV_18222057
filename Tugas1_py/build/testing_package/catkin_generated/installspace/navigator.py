#!/usr/bin/env python3.9

import rospy
from testing_package.msg import DronePos  # Import the custom message type

def navigator_node():
    rospy.init_node('navigator', anonymous=True)
    pub = rospy.Publisher('/drone_status', DronePos, queue_size=10)
    rate = rospy.Rate(100)  # 5 Hz (adjust the frequency as needed)

    drone_pos = DronePos(); 
    drone_pos.x = 0; 
    drone_pos.y = 0; 
    drone_pos.z = 0; 
    while not rospy.is_shutdown():
        if(drone_pos.x > 1000): 
            rospy.signal_shutdown("Time Out")
        if(1 <= drone_pos.z <= 9): 
            drone_pos.status = "Take Off"
        elif(drone_pos.z == 0):
            drone_pos.status = "Landing"
        else : 
            drone_pos.status = "Flying"
        rospy.loginfo("Publishing drone status: {}".format(drone_pos))
        pub.publish(drone_pos)
        drone_pos.x += 1
        drone_pos.y -= 1
        if(drone_pos.z != 10):
            drone_pos.z+=1
        rate.sleep()

if __name__ == '__main__':
    try:
        navigator_node()
    except rospy.ROSInterruptException:
        pass
