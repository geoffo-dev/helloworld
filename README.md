# Hello World App

## Installation

Installation of the app is through the use of a helm chart.

First you need to add the helm repository to the cluster using

`helm repo add helloworld https://geoffo-dev.github.io/helloworld`

Next create a namespace to host the application, for example 

`kubectl create namespace helloworld-app`

Finally install the helm chart to the cluster

`helm install helloworld helloworld/helloworld -n helloworld-app`

### Customisation

The app can have some level of customisation through the helm chart through the use of a values.yaml file. This is available here [values.yaml](charts/helloworld/values.yaml). 

Copy this file locally and edit as required and then run helm install with these values:

`helm install -f values.yaml helloworld helloworld/helloworld -n helloworld-app`

### Viewing the application

In order to view the application on `minikube` you need to run the following command:

`minikube tunnel`

This will expose the application on:

`http://localhost:8080`

To test the load balancing you can refresh the page using `ctrl + shift + r` and observer the hostname change.

## Uninstall 

To uninstall the helm chart simply run

`helm uninstall helloworld -n helloworld-app`

## Running Locally

These commands will allow you to build and run the pod locally. 

### To build the image locally

To build the image you can use

`podman build -t helloworld -f docker/Dockerfile .`

### To run image

`podman run -dt -p 8080:80/tcp helloworld`

