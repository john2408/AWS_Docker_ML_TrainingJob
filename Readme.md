# ML Training Job on AWS SageMaker with custom Pypsark Docker Container

## Setup Configuration using AWS SageMaker Python SDK

Ref: https://docs.aws.amazon.com/sagemaker/latest/dg/adapt-training-container.html 


[![image size](https://img.shields.io/docker/image-size/johntorrestensor/pyspark-ml/latest)](https://hub.docker.com/r/johntorrestensor/pyspark-ml/ "johntorrestensor/pyspark-ml image size")


Steps: 

- (1) Configure AWS CLI 
    - Install AWS CLI : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 
    - Configure User: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html
- (2) Create SageMaker Role - run scripts/create-sagemaker-role.sh - then attach AmazonSageMakerFullAccess policy to this role on SageMaker UI
- (3) Create New Container Registry in AWS ECR. 
    - Repo Name Structure: 
        - REPO_NAME = sagemaker-training-containers/pyspark-ml
        - $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME

- (4) Then use scripts/buil_and_push.sh, to build, tag and push image to AWS ECR. Pass ACCOUNT_ID, REGION and REPO_NAME as parameters. Remember to add current user to docker group:   

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```

- (5) Test Training Job using SageMaker SDK via jupyter notebook test_training_job.ipynb


If using Amazon pre-built Spark Images, download them from AWS ECR Repositories using script/pull_spark_docker_img_aws.sh. Modify parameters:

- ACCOUNT_ID_SPARK
- REGION
- SPARK_IMAGE

Depending on the region and spark version you want to access to. Here a list of available aws spark docker images : https://github.com/aws/sagemaker-spark-container/blob/master/available_images.md