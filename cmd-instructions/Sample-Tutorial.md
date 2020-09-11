LAB: GCP Fundermentals: Getting Started with Compute Engine
================

## Objective

In this lab, you will learn how to perform the following tasks: - Create
a Compute Engine virtual machine using the Google Cloud Platform (GCP)
Console. - Create a Compute Engine virtual machine using the gcloud
command-line interface. - Connect between the two instances.

## Steps

1- Create a virtual machine using the GCP
Console

``` bash
gcloud compute instances create my-vm-1 --zone=us-central1-a --machine-type=n1-standard-1 --subnet=default --tags=http-server --image=debian-9-stretch-v20200902 --image-project=debian-cloud 

gcloud compute firewall-rules create default-allow-http --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=http-server
```

2- Create a virtual machine using the GCP Console

``` bash
gcloud config set compute/zone us-central1-b

gcloud compute instances create "my-vm-2" --machine-type "n1-standard-1" --image-project "debian-cloud" --image "debian-9-stretch-v20190213" --subnet "default"
```

3- Connect between VM instances

``` bash
gcloud compute ssh my-vm-2 --quiet

ping my-vm-1

ssh my-vm-1

sudo apt-get install nginx-light -y
```

edit file

``` bash
sudo nano /var/www/html/index.nginx-debian.html
```

add

``` bash
'Hi from YOUR_NAME'
```

save and exit with `CTRL + o` , `enter` , `CTRL + x`

``` bash
curl http://localhost/

#exit my-vm-1
exit

curl http://my-vm-1/
```
