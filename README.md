## Build image

To build the image you can use

`podman build -t helloworld -f docker/Dockerfile .`

## Run image

podman run -dt -p 8080:8080/tcp helloworld


helm repo add helloworld https://geoffo-dev.github.io/helloworld

kubectl create namespace helloworld-app

helm install helloworld helloworld/helloworld -n helloworld-app

export SERVICE_IP=$(kubectl get svc --namespace helloworld-app helloworld --template "{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}")

