#!/bin/sh
 
TAG="mysql"
 
CONTAINER_ID=$(docker ps | grep $TAG | awk '{print $1}')
 
IP=$(docker inspect $CONTAINER_ID | python -c 'import json,sys;obj=json.load(sys.stdin);print obj[0]["NetworkSettings"]["IPAddress"]')

echo "IP: ${IP}"

mysql -u admin -p -h $IP
