#!/bin/bash
set -e
source $(dirname $0)/../common.sh

docker $controller_conn run \
  --log-driver=journald \
  -t \
  --rm \
  --net hadoop-net \
  --name hadoop-mapreduce-examples-3 \
  -h hadoop-mapreduce-examples \
  hadoop-benchmark/hadoop \
  run \
  hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar "$@"