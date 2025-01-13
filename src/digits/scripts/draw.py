#!/usr/bin/python3

import rospy
from turtlesim.srv import TeleportAbsolute, SetPen

length = 2
middle = 5.5
min_x = middle - length
max_x = middle + length
min_y = middle - length * 2
max_y = middle + length * 2


def reset(set_pen_service, teleport_service):
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

    rospy.wait_for_service("/turtle1/teleport_absolute")
    rospy.wait_for_service("/turtle1/set_pen")

    try:
        set_pen_service = rospy.ServiceProxy("/turtle1/set_pen", SetPen)
        teleport_service = rospy.ServiceProxy(
            "/turtle1/teleport_absolute", TeleportAbsolute
        )

        reset(set_pen_service, teleport_service)
        segment_teleport_1(set_pen_service, teleport_service, off=0)
        segment_teleport_2(set_pen_service, teleport_service, off=0)
        segment_teleport_3(set_pen_service, teleport_service, off=0)
        segment_teleport_4(set_pen_service, teleport_service, off=0)
        segment_teleport_5(set_pen_service, teleport_service, off=0)
        segment_teleport_6(set_pen_service, teleport_service, off=0)
        segment_teleport_7(set_pen_service, teleport_service, off=0)

        rospy.loginfo("Teleported turtle successfully!")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")


if __name__ == "__main__":
    try:
        teleport_turtle()
    except rospy.ROSInterruptException:
        pass
