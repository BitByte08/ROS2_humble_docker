FROM ros:humble

# 기본 유틸
RUN apt-get update && apt-get install -y \
    python3-colcon-common-extensions \
    python3-rosdep \
    python3-vcstool \
    git \
    && rm -rf /var/lib/apt/lists/*

# rosdep 초기화
RUN rosdep init || true && rosdep update

WORKDIR /home/ros

