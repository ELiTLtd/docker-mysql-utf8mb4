#!/bin/sh
$(aws ecr get-login --no-include-email --region eu-west-1)
docker build -t mysql-utf8mb4 .
docker tag mysql-utf8mb4:latest 689917379567.dkr.ecr.eu-west-1.amazonaws.com/mysql-utf8mb4:latest
docker push 689917379567.dkr.ecr.eu-west-1.amazonaws.com/mysql-utf8mb4:latest
