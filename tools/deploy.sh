#! /bin/bash

# Add a step that checks for a build folder and tell the user.
if [ -d "static-site-lesson/build" ]; then
  echo "Build folder located. Continuing..."
else
  echo "Build folder not set."
  exit 1
fi


# Check for the AWS command
if [ -x "$(command -v aws)" ]; then
  echo "AWS command found. Continuing..."
else
  echo "AWS command not found. Installing AWSCLI"
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
  exit 1
fi

# Use the AWS command to upload the build to S3
aws s3 ls

