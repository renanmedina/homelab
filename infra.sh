#!/bin/bash
docker compose -p="$1" $2 -d --build