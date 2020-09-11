# # LAB: Console and Cloud Shell
# ## Objective
#
# In this lab, you learn how to perform the following tasks:
# - Get access to Google Cloud.
# - Create a Cloud Storage bucket using the Cloud Console.
# - Create a Cloud Storage bucket using Cloud Shell.
# - Become familiar with Cloud Shell features.
#
# ## Steps 
# 1- Create a bucket using the Cloud Console
gsutil mb gs://qwiklabs-gcp-02-cec272a61e16-con

# 2- Access Cloud Shell

# 3- Create a bucket using Cloud Shell
gsutil mb gs://qwiklabs-gcp-02-cec272a61e16-shell

# 4- Explore more Cloud Shell features

# Assuming example.txt in shell instance
gsutil cp example.txt gs://qwiklabs-gcp-02-cec272a61e16-shell

# 5- Create a persistent state in Cloud Shell

## To list available regions, execute the following command:

gcloud compute regions list

## Create and verify an environment variable
### Choose a region from list above

INFRACLASS_REGION=us-central1

echo $INFRACLASS_REGION

### Append the environment variable to a file

mkdir infraclass

touch infraclass/config

echo INFRACLASS_REGION=$INFRACLASS_REGION >> ~/infraclass/config

INFRACLASS_PROJECT_ID=qwiklabs-gcp-02-cec272a61e16

echo INFRACLASS_PROJECT_ID=$INFRACLASS_PROJECT_ID >> ~/infraclass/config

source infraclass/config
echo $INFRACLASS_PROJECT_ID

### Close and open cloud shell again.

echo $INFRACLASS_PROJECT_ID


# Modify the bash profile and create persistence

# add `source infraclass/config`

echo source infraclass/config >> .profile

# Close and then re-open Cloud Shell to cycle the VM

echo $INFRACLASS_PROJECT_ID
