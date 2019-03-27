#!/usr/bin/env bash

set -e

export SKAFFOLD_CACHE_ARTIFACTS=true

if [[ "$(git describe --tags --always)" != "v1" ]]; then
    echo "The demo works best when the sources are tagged to v1"
    exit 1
fi

cd repeat
go build -o /dev/null main.go
docker build . -t hello:v1
kubectl get nodes
kubectl get pods
cd ..

cd hello
rm -f skaffold.yaml
kctx docker-for-desktop
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
kctx docker-for-desktop
skaffold build
skaffold delete
skaffold build -p cloud-build
cd ..
