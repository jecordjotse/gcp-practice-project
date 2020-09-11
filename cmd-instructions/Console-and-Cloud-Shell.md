LAB: Console and Cloud Shell
================

## Objective

In this lab, you learn how to perform the following tasks:

  - Get access to Google Cloud.

  - Create a Cloud Storage bucket using the Cloud Console.

  - Create a Cloud Storage bucket using Cloud Shell.

  - Become familiar with Cloud Shell features.

## Steps

1- Create a bucket using the Cloud Console

``` bash
gsutil mb gs://qwiklabs-gcp-02-cec272a61e16-con
```

2- Access Cloud Shell

3- Create a bucket using Cloud Shell

``` bash
gsutil mb gs://qwiklabs-gcp-02-cec272a61e16-shell
```

4- Explore more Cloud Shell features

### Assuming example.txt in shell instance

``` bash
gsutil cp example.txt gs://qwiklabs-gcp-02-cec272a61e16-shell
```

5- Create a persistent state in Cloud Shell

### To list available regions, execute the following command:

``` bash
gcloud compute regions list
```

### Create and verify an environment variable

Choose a region from list above

``` bash
INFRACLASS_REGION=us-central1

echo $INFRACLASS_REGION
```

Append the environment variable to a file

``` bash
mkdir infraclass

touch infraclass/config

echo INFRACLASS_REGION=$INFRACLASS_REGION >> ~/infraclass/config

INFRACLASS_PROJECT_ID=qwiklabs-gcp-02-cec272a61e16

echo INFRACLASS_PROJECT_ID=$INFRACLASS_PROJECT_ID >> ~/infraclass/config

source infraclass/config
echo $INFRACLASS_PROJECT_ID
```

Close and open cloud shell again.

``` bash
echo $INFRACLASS_PROJECT_ID
```

#### Modify the bash profile and create persistence

``` bash
nano .profile
```

add `source infraclass/config`

save and exit with `CTRL + o` , `enter` , `CTRL + x`

Close and then re-open Cloud Shell to cycle the VM

``` bash
echo $INFRACLASS_PROJECT_ID
```
