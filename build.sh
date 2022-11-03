#!/bin/bash
docker compose -f docker-compose.flux.yml down

docker build -t honsontran/deso-backend:stable -f Dockerfile.backend .
docker build -t honsontran/deso-frontend:stable -f Dockerfile.frontend .
docker build -t honsontran/deso-nginx:latest -f Dockerfile.nginx .

docker push docker.io/honsontran/deso-backend:stable
docker push docker.io/honsontran/deso-frontend:stable
docker push docker.io/honsontran/deso-nginx:latest