#!/bin/bash
#docker run with different parameters

echo 'TESTTT!!!'

docker-compose -f ./compose.yml up -d --remove-orphans --force-recreate #--rm

docker-compose -f ./compose.yml logs
