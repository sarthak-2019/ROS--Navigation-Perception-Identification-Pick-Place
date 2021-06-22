# ROS--Navigation-Perception-Identification-Pick-Place
Projects needs Ubuntu 18.04 preinstalled.

## ROS Melodic Installation

1-Setup your computer to accept software from packages.ros.org.<br>
`sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'`

2-Set up your keys..<br>
`sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654`

3-Make sure your Debian package index is up-to-date..<br>
`sudo apt update`

4-Installing the ROS recommended configuration..<br>
`sudo apt install ros-melodic-desktop-full`


## Configuration Steps

1-Adding environment variables: To Automatically add ROS environment variables to your bash session every time a 
new shell (terminal) is launched, enter the following commands..<br>

`echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc`

2-Initialize rosdep: Before you can use many ROS tools, you will need to initialize rosdep. rosdep enables you to easily install 
system dependencies for source you want to compile and is required to run some core components in ROS..<br>

`sudo apt install python-rosdep
sudo rosdep init
rosdep update`

## More packages to install

1-Catkin Tools<br>
`sudo apt-get install ros-melodic-catkin python-catkin-tools`

2-std_msg package<br>
`sudo apt install ros-melodic-std-msgs`

3-turtlesim<br>
`sudo apt-get install ros-melodic-ros-tutorials`

## 2D Mapping and Navigation

1-Gmapping package:<br>
`sudo apt-get install ros-melodic-gmapping`<br>
<br>2-Teleop keyboard package:<br>
`sudo apt-get install ros-melodic-teleop-twist-keyboard`<br>
<br>3-Navigation package:<br>
`sudo apt-get install ros-melodic-navigation`<br>
<br>4-Tf2 package:<br>
`sudo apt-get install ros-melodic-tf2-sensor-msgs`<br>
<br>5-AMCL package:<br>
`sudo apt-get install ros-melodic-amcl`<br>
<br>6-Map server package:<br>
`sudo apt-get install ros-melodic-map-server`<br>

## MoveIt Arm Manipulation

1-MoveIt:<br>
`sudo apt install ros-melodic-moveit`<br>
<br>2-MoveIt ROS planning<br>
`sudo apt install ros-melodic-moveit-ros-planning`<br>
<br>3-ROS Control<br>
`sudo apt-get install ros-melodic-ros-control ros-melodic-ros-controllers`<br>
































