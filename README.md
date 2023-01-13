## Build image

To build the image you can use

`podman build -t helloworld -f docker/Dockerfile .`

## Run image

podman run -dt -p 8000:8000/tcp helloworld