# Training Job on AWS SageMaker with custom Pypsark Docker Container

## Setup Configuration using AWS SageMaker Python SDK

Ref: https://docs.aws.amazon.com/sagemaker/latest/dg/adapt-training-container.html 


[![docker pulls](https://img.shields.io/docker/pulls/jupyter/pyspark-notebook.svg)](https://hub.docker.com/r/jupyter/pyspark-notebook/)
[![docker stars](https://img.shields.io/docker/stars/jupyter/pyspark-notebook.svg)](https://hub.docker.com/r/jupyter/pyspark-notebook/)
[![image size](https://img.shields.io/docker/image-size/jupyter/pyspark-notebook/latest)](https://hub.docker.com/r/jupyter/pyspark-notebook/ "jupyter/pyspark-notebook image size")


Steps: 

- (1) Configure AWS CLI 
    - Install AWS CLI : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 
    - Configure User: ref: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html
- Pull AWS Spark Docker Images:
    - List of available docker images : https://github.com/aws/sagemaker-spark-container/blob/master/available_images.md
    - Use script
- (2) Create SageMaker Role - run create-sagemaker-role.sh - then attach AmazonSageMakerFullAccess policy to this role on SageMaker UI
- (4) run script build_and_push.sh