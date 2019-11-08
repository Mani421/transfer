#!/bin/sh
mvn clean package && docker build -t Paytm/transfer .
docker rm -f transfer || true && docker run -d -p 8080:8080 -p 4848:4848 --name transfer Paytm/transfer 
