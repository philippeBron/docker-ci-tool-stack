#!/bin/bash

name=$1
nexus_url=${nexus_url:-http://localhost:8081}

printf "Running Integration API Script $name\n\n"

curl -v -X POST -u admin:admin123 --header "Content-Type: text/plain" "$nexus_url/service/siesta/rest/v1/script/$1/run"
