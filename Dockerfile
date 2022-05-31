FROM ros:galactic
ARG WS=/opt/ros/overlay_ws


# Install dependencies
RUN apt update -y --fix-missing
RUN apt install -y build-essential cmake git
RUN rosdep update

# Install ros packages
RUN apt install -y ros-galactic-gazebo-ros ros-galactic-rviz2


# Build source
WORKDIR $WS
COPY . ./src
RUN . /opt/ros/$ROS_DISTRO/setup.sh && \
    rosdep install -y --from-paths src --ignore-src && \
    rm -rf /var/lib/apt/lists/*
RUN . /opt/ros/$ROS_DISTRO/setup.sh && \
    colcon build --symlink-install


# Source entrypoint setup
ENV WS $WS
RUN sed --in-place --expression '$isource "$WS/install/setup.bash"' /ros_entrypoint.sh

# Run launch file
CMD ros2 launch simulation_bringup bringup.launch.py

