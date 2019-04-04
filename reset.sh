#!/usr/bin/env bash

set -e

export SKAFFOLD_CACHE_ARTIFACTS=true

if [[ "$(git describe --tags --always)" != "v1" ]]; then
    echo "The demo works best when the sources are tagged to v1"
    exit 1
fi

echo "Revoke additional accounts"
TO_REVOKE=$(gcloud auth list --format="value(account)" | grep -v 'dgageot@gmail.com' || true)
if [ ! -z "${TO_REVOKE}" ]; then
    gcloud auth revoke ${TO_DELETE}
fi

echo "Reset GCP project"
if [ "$(gcloud config get-value project)" != "next19" ]; then
  gcloud config set project next19
fi

echo "Get GKE cluster credentials"
gcloud container clusters get-credentials demo --zone us-west2-a --project next19

echo "Delete every k8s resource"
kctx docker-for-desktop
TO_DELETE=$(kubectl get services,deployments.apps,pods -o name | grep -v 'service/kubernetes' || true)
if [ ! -z "${TO_DELETE}" ]; then
    kubectl delete ${TO_DELETE}
fi

cd repeat
go build -o /dev/null main.go
docker build . -t hello:v1
kubectl get nodes
kubectl get pods
cd ..

cd java
./mvnw package
docker build . -t web
cd ..

cd jib
./mvnw package
./mvnw compile jib:build -Dimage=gcr.io/dga-demo/hello-jib
skaffold build
cd ..

cd hello
rm -f skaffold.yaml
skaffold build -f <(skaffold init -f - --force)
skaffold delete -f <(skaffold init -f - --force)
cd ..

cd hexagons
kctx gke_next19_us-west2-a_demo
skaffold build
skaffold delete
kctx docker-for-desktop
skaffold build
skaffold delete
cd ..

cd gcb
skaffold build
skaffold delete
skaffold build -p cloud-build
cd ..
