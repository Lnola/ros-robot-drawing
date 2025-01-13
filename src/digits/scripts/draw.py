#!/usr/bin/python3

# import rospy
# from geometry_msgs.msg import Twist
# from turtlesim.msg import Pose
# import sys

# robot_x = 0


# def pose_callback(pose):
#     global robot_x
#     rospy.loginfo("Robot X = %f\n", pose.x)
#     robot_x = pose.x


# def move_turtle(distance):
#     global robot_x
#     rospy.init_node("move_turtle", anonymous=True)

#     pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=10)
#     rospy.Subscriber("/turtle1/pose", Pose, pose_callback)

#     rate = rospy.Rate(10)  # 10hz
#     vel = Twist()

#     while not rospy.is_shutdown():
#         vel.linear.x = 2
#         vel.linear.y = 0
#         vel.linear.z = 0
#         vel.angular.x = 0
#         vel.angular.y = 0
#         vel.angular.z = 2
#         # rospy.loginfo("Linear Vel = %f: Angular Vel = %f", lin_vel,ang_vel)
#         # Checking the robot distance is greater than the commanded distance
#         # If it is greater, stop the node
#         if robot_x >= distance:
#             rospy.loginfo("Robot Reached destination")
#             rospy.logwarn("Stopping robot")
#             break
#         pub.publish(vel)
#         rate.sleep()


# if __name__ == "__main__":
#     try:
#         move_turtle(float(sys.argv[1]))
#     except rospy.ROSInterruptException:
#         pass


import rospy
from turtlesim.srv import TeleportAbsolute, SetPen
from std_srvs.srv import Empty


length = 2
middle = 5.5
min_x = middle - length
max_x = middle + length
min_y = middle - length * 2
max_y = middle + length * 2

seven_segment_array = [
    [0, 0, 0, 0, 0, 0, 1],
    [1, 1, 0, 0, 1, 1, 1],
    [1, 0, 0, 1, 0, 0, 0],
    [1, 0, 0, 0, 1, 1, 0],
    [0, 1, 0, 0, 1, 1, 0],
    [0, 0, 1, 0, 1, 0, 0],
    [0, 0, 1, 0, 0, 0, 0],
    [1, 0, 0, 0, 1, 1, 1],
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1, 1, 0],
]


def reset(reset_service, set_pen_service, teleport_service):
    reset_service()
    set_pen_service(r=255, g=255, b=255, width=25, off=1)
    teleport_service(min_x, middle, 0)


def segment_teleport_1(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(min_x, min_y, 0)


def segment_teleport_2(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(max_x, min_y, 0)


def segment_teleport_3(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(max_x, middle, 0)


def segment_teleport_4(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(max_x, max_y, 0)


def segment_teleport_5(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(min_x, max_y, 0)


def segment_teleport_6(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(min_x, middle, 0)


def segment_teleport_7(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(max_x, middle, 0)


def teleport_turtle():
    rospy.init_node("teleport_node", anonymous=True)

    rospy.wait_for_service('/reset')
    rospy.wait_for_service("/turtle1/set_pen")
    rospy.wait_for_service("/turtle1/teleport_absolute")

    try:
        reset_service = rospy.ServiceProxy('/reset', Empty)
        set_pen_service = rospy.ServiceProxy("/turtle1/set_pen", SetPen)
        teleport_service = rospy.ServiceProxy("/turtle1/teleport_absolute", TeleportAbsolute)

        number = 0
        
        reset(reset_service, set_pen_service, teleport_service)

        segment_teleport_1(set_pen_service, teleport_service, off=seven_segment_array[number][0])
        segment_teleport_2(set_pen_service, teleport_service, off=seven_segment_array[number][1])
        segment_teleport_3(set_pen_service, teleport_service, off=seven_segment_array[number][2])
        segment_teleport_4(set_pen_service, teleport_service, off=seven_segment_array[number][3])
        segment_teleport_5(set_pen_service, teleport_service, off=seven_segment_array[number][4])
        segment_teleport_6(set_pen_service, teleport_service, off=seven_segment_array[number][5])
        segment_teleport_7(set_pen_service, teleport_service, off=seven_segment_array[number][6])

        rospy.loginfo("Teleported turtle successfully!")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")


if __name__ == "__main__":
    try:
        teleport_turtle()
    except rospy.ROSInterruptException:
        pass
