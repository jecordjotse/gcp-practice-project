LAB: Creating Virtual Machines
================

## Objective

In this lab, you learn how to perform the following tasks:

  - Create several standard VMs.

  - Create advanced
VMs.

### [bash scrip here](https://github.com/jecordjotse/gcp-practice-project/blob/master/cmd-instructions/creating_virtual_machines.sh)

## Steps

1- Create a utility virtual
machine

``` bash
gcloud compute instances create util-vm --zone=us-central1-c     --machine-type=n1-standard-1 --subnet=default --no-address --image=debian-10-buster-v20200902 --image-project=debian-cloud
```

2- Create a Windows virtual
machine

``` bash
gcloud compute instances create win-vm --zone=europe-west2-a --machine-type=n1-standard-2 --subnet=default --tags=http-server,https-server --image=windows-server-2016-dc-core-v20200813 --image-project=windows-cloud --boot-disk-size=100GB --boot-disk-type=pd-ssd --boot-disk-device-name=win-vm
# Allow Http firewall rule
gcloud compute firewall-rules create default-allow-http --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=http-server
# Allow Https firewall rule
gcloud compute firewall-rules create default-allow-https --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:443 --source-ranges=0.0.0.0/0 --target-tags=https-server
```

Set
password

``` bash
gcloud beta compute reset-windows-password win-vm --zone=europe-west2-a --quiet
```

3- Create a custom virtual
machine

``` bash
gcloud compute instances create cust-vm --zone=us-west1-b --machine-type=e2-custom-6-32768 --subnet=default --image=debian-10-buster-v20200902 --image-project=debian-cloud
```

Connect via SSH to your custom VM

``` bash
gcloud compute ssh cust-vm --zone=us-west1-b --quiet
```

Run these to check featuresVM

``` bash
free

sudo dmidecode -t 17

nproc

lscpu
# exit ssh
exit
```
