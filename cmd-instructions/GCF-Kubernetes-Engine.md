GCP Fundermentals: Getting Started with GKE
================

## Objective

In this lab, you learn how to perform the following tasks:

  - Provision a Kubernetes cluster using Kubernetes Engine.

  - Deploy and manage Docker containers using
kubectl.

### [bash scrip here](https://github.com/jecordjotse/gcp-practice-project/blob/master/cmd-instructions/gcf_kubernetes_engine.sh)

## Steps

1- Confirm that needed APIs are enabled

  - search for `Kubernetes Engine API`

<!-- end list -->

``` bash
gcloud services list --enabled | grep Kuber
```

if not listed, run

``` bash
gcloud services enable container.googleapis.com
```

  - search for `Container Registry API`

<!-- end list -->

``` bash
gcloud services list --enabled | grep Container
```

if not listed, run

``` bash
gcloud services enable containerregistry.googleapis.com
```

2- Start a Kubernetes Engine cluster

``` bash
export MY_ZONE=us-central1-a

gcloud container clusters create webfrontend --zone $MY_ZONE --num-nodes 2
```

check for installed version

``` bash
kubectl version
```

list running nodes by viewing instances

``` bash
gcloud compute instances list
```

3- Run and deploy a container

``` bash
kubectl create deploy nginx --image=nginx:1.17.10
```

View running pods

``` bash
kubectl get pods
```

Expose the nginx container to the Internet

``` bash
kubectl expose deployment nginx --port 80 --type LoadBalancer
```

Scale up the number of pods running on your service

``` bash
kubectl scale deployment nginx --replicas 3
```

View running pods

``` bash
kubectl
```
