##!/usr/bin/env bash
VERSION="2.5.1"
echo starting Master
docker run --name=namenode -d -h=namenode -p 50070:50070 -p 8088:8088 -p 19888:19888 nclaudon/hadoop:${VERSION}_cluster /etc/bootstrap.sh -nd
echo Starting Minions
for ((i = 1; i <= $1; i++)); do
	docker run --name=datanode$i -d -h=datanode$i --link namenode:namenode nclaudon/hadoop:${VERSION}_cluster /etc/bootstrap.sh -dd
done