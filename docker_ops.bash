#!/bin/bash
composes_path=/opt/docker-services
compose_array=($(ls -d $composes_path/*))

for compose in "${compose_array[@]}"
do
  echo $compose
  cd $compose
  docker compose pull
  docker compose up -d
done
