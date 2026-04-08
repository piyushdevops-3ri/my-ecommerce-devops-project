#!/bin/bash
docker stop ecommerce-app || true
docker rm ecommerce-app || true
docker build -t ecommerce-app .
docker run -d -p 5000:5000 --name ecommerce-app ecommerce-app
