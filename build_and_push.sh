#!/bin/bash

echo -n "Enter the version name for this build: "
read version

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

docker build -t eu.gcr.io/chees-info/twistlocktest:$version .

gcloud docker push eu.gcr.io/chees-info/twistlocktest:$version

rm main
