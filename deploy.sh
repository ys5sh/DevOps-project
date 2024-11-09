#!/bin/bash

# Variables
FRONTEND_IMAGE="ys5sh/frontend"
BACKEND_IMAGE="ys5sh/backend"
TAG="02"

# Build frontend and backend images
echo "Building frontend and backend images..."
docker build -t $FRONTEND_IMAGE:$TAG ./frontend
docker build -t $BACKEND_IMAGE:$TAG ./backend

# Push images to Docker Hub
echo "Pushing images to Docker Hub..."
docker push $FRONTEND_IMAGE:$TAG
docker push $BACKEND_IMAGE:$TAG

# Run docker-compose
echo "Starting the application with Docker Compose..."
docker-compose up -d

echo "Application deployed successfully."
