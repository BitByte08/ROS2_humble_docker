#!/bin/bash
set -e

CONTAINER_NAME=ros2_humble

echo "[1/3] X11 권한 열기..."
xhost +local:root

echo "[2/3] docker compose up..."
docker compose up -d

echo "[3/3] 컨테이너 접속..."
docker exec -it $CONTAINER_NAME bash
