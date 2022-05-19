#!/usr/bin/env bash


docker-compose -f ../docker-compose.yaml build dev
docker-compose run dev