go run main.go
docker build . -t hello:v1
docker run --rm -it hello:v1
vi pod.yaml
kubectl apply -f pod.yaml
kubectl logs -f hello
kctx gke_dga-demo_europe-west1-b_bbl
kctx docker-for-desktop
kubectl get pods
skaffold run --tail
skaffold init -f skaffold.yaml
skaffold build -p cloud-build
