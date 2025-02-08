# ROS Robot Drawing

## Overview
This project enables a ROS-powered TurtleBot to perform autonomous drawing of numbers in a 7-segment display manner as well as having some movement basics training. It leverages ROS for communication, path planning, and execution of drawing motions using the lines left after the robot.

## Features
- Draws numbers using a 7-segment display pattern
- Uses ROS for robot control
- Supports various drawing surfaces
- Customizable parameters for stroke width and precision

## Installation
### Prerequisites
- Ubuntu 20.04 ([Installation Guide](https://releases.ubuntu.com/focal/))
- ROS installed ([Installation Guide](http://wiki.ros.org/ROS/Installation))

### Clone Repository
```bash
git clone https://github.com/Lnola/ros-robot-drawing.git
cd ros-robot-drawing
```

## Usage
Open new terminals for each of the following commands!

### Start ROS Core
```bash
roscore
```

### Launch TurtleSim
```bash
rosrun turtlesim turtlesim_nodec
```

### Start the node responsible for drawing
```bash
rosrun digits drawer.py    
```

### Start the node responsible for recieving numbers and delegating the drawing
```bash
rosrun digits controller.py    
```

### Start the node responsible for generating the numbers
```bash
rosrun digits generator.py    
```

## Architecture

Below is the representation of the architecture for the Robot Drawing system:
![Architecture](architecture.png)

