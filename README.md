# Enjoy Robotics - Test task

You are asked to build a robot simulation capable of accepting goal poses from RViz and navigating there avoiding static obstacles. A ROS2 package should be implemented which sends the robot to an arbitrary location.

<br/>
The simulated robot should have the following

 - Differential driven wheels
 - Lidar
 - Simulated odometry source


<br/>
The simulated robot should be able to

 - Navigate to an arbitrarily given point
 - Avoid static obstacles (meaning the obstacles themselves are not moving)

 <br/>
 The simulated world should

 - Be in 3D with a planar ground
 - Have at least five different obstacles scattered around
 - Have obstacles with spacings that the robot can and cannot fit through

 <br/>
 <br/>
 Implement this assignment than think about the following questions and answer them

 - How would you implement simulating dynamic obstacles?
 - What would you change in the navigation to handle dynamic obstacles?
 - How would you simulate multiple robots?

<br/>
Write a documentation outlining how your implementation works.

<br/>
For a starting point we provide this repository.
Please don't fork, but download it and use it as a starting point for your own repository.

To use the provided sample run: `$ docker-compose up`

If you encounter a problem with Qt or OpenGL, use the following command to allow sharing the X Server. This only needs to be run once: `$ xhost +`


<br/>
<br/>
<br/>
Useful resources

- [ROS2 Galactic documentation](https://docs.ros.org/en/galactic/index.html)
- [Index ROS Enhancement Proposals](https://ros.org/reps/rep-0000.html)
- [Navigation2 documentation](https://navigation.ros.org/)
- [Git guide](https://git-scm.com/book/en/v2)
- [Docker documentation](https://docs.docker.com/)
