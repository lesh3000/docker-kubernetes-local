#!/usr/bin/env bash

#dockerpath=sklearn_inference_image
#
#echo "Docker ID and Image: $dockerpath"
#
#aws ecr create-repository --repository-name ${dockerpath}
#docker tag 4dd6508eaf9f 559253395851.dkr.ecr.us-west-1.amazonaws.com/${dockerpath}:latest
#aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin 559253395851.dkr.ecr.us-west-1.amazonaws.com
#docker push 559253395851.dkr.ecr.us-west-1.amazonaws.com/${dockerpath}:latest


dockerpath=dmitrylesh/sklearn_inference_image
echo "Docker ID and Image: $dockerpath"
docker login
docker tag 4dd6508eaf9 ${dockerpath}:latest
docker push ${dockerpath}:latest