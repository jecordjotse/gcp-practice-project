# # LAB: GCP Fundermentals: Getting Started with GKE 
# ## Objective
#
# In this lab, you learn how to perform the following tasks:
# - Provision a Kubernetes cluster using Kubernetes Engine.
# - Deploy and manage Docker containers using kubectl.
#
# ## Steps 
# 1- Confirm that needed APIs are enabled
#	search for `Kubernetes Engine API`

gcloud services list --enabled | grep Kuber

# if not listed, run

gcloud services enable container.googleapis.com

#	search for `Container Registry API`

gcloud services list --enabled | grep Container

# if not listed, run

gcloud services enable containerregistry.googleapis.com



# 2- Start a Kubernetes Engine cluster

export MY_ZONE=us-central1-a

gcloud container clusters create webfrontend --zone $MY_ZONE --num-nodes 2

# check for installed version

kubectl version

# list running nodes by viewing instances

gcloud compute instances list

# 3- Run and deploy a container
kubectl create deploy nginx --image=nginx:1.17.10

# View running pods
kubectl get pods

# Expose the nginx container to the Internet
kubectl expose deployment nginx --port 80 --type LoadBalancer

# Scale up the number of pods running on your service
kubectl scale deployment nginx --replicas 3

# View running pods
kubectl get pods

# Confirm that your external IP address has not changed
kubectl get services

gcloud compute instances list


