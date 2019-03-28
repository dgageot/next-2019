go run main.go
docker build . -t hello:v1
docker run --rm -it hello:v1
vi pod.yaml
vi title/src/main/java/title/Title.java
vi ui/public/index.html
kubectl apply -f pod.yaml
kubectl logs -f hello
kctx gke_next19_us-west2-a_demo
kctx docker-for-desktop
kubectl get pods
skaffold run --tail
skaffold init -f skaffold.yaml
skaffold build -p cloud-build
./mvnw compile
./mvnw compile jib:build -Dimage=gcr.io/dga-demo/hello-jib
