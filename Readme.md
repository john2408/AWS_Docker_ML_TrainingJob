# Training Job on AWS SageMaker with custom Pypsark Docker Container

## Setup Configuration using AWS SageMaker Python SDK

Ref: https://docs.aws.amazon.com/sagemaker/latest/dg/adapt-training-container.html 


[![image size](https://img.shields.io/docker/image-size/johntorrestensor/pyspark-ml/latest)](https://hub.docker.com/r/johntorrestensor/pyspark-ml/ "johntorrestensor/pyspark-ml image size")


Steps: 

- (1) Configure AWS CLI 
    - Install AWS CLI : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 
    - Configure User: ref: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

- (2) Create SageMaker Role - run create-sagemaker-role.sh - then attach AmazonSageMakerFullAccess policy to this role on SageMaker UI
- (3) Create New Container Registry in AWS ECR. 
    - Sample Name: 
        $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/sagemaker-training-containers/pyspark-3.3-py3.10
- (4) Build Docker Image Locally. 
- (5) Push Image to AWS ECR. 
- (6) Run Training Job using SageMaker SDK.  


If using Amazon pre-built Spark Images:

- Pull AWS Spark Docker Images:
    - List of available docker images : https://github.com/aws/sagemaker-spark-container/blob/master/available_images.md
    - Use script