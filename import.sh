#! /bin/bash
echo "Start compose"
docker-compose up -d
echo "Waiting export compleate"
docker logs pg_loader -f
echo "Stopping compose"
docker-compose down
echo "Now you have volume "data-pg" to use any where!"