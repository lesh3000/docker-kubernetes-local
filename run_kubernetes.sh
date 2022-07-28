#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dmitrylesh/sklearn_inference_image
#kubectl get nodes
# Deploy an App from the Dockerhub to the Kubernetes Cluster
kubectl create deploy inference --image=${dockerpath}
# See the status
pod=$(kubectl get pod --no-headers -o custom-columns=":metadata.name")

echo "pod name: ${pod}"
# Port forward
kubectl port-forward pod/${pod} --address 0.0.0.0 8000:80

