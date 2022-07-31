# Training Job on AWS SageMaker for custom Docker Container

## Setup Configuration using AWS SageMaker Python SDK


[![docker pulls](https://img.shields.io/docker/pulls/jupyter/pyspark-notebook.svg)](https://hub.docker.com/r/jupyter/pyspark-notebook/)
[![docker stars](https://img.shields.io/docker/stars/jupyter/pyspark-notebook.svg)](https://hub.docker.com/r/jupyter/pyspark-notebook/)
[![image size](https://img.shields.io/docker/image-size/jupyter/pyspark-notebook/latest)](https://hub.docker.com/r/jupyter/pyspark-notebook/ "jupyter/pyspark-notebook image size")


Steps: 

- (1) Configure AWS CLI
- (2) Create SageMaker Role - run create-sagemaker-role.sh - then attach AmazonSageMakerFullAccess policy to this role on SageMaker UI
- (3) Configure Docker Hub Login 
- (4) run script build_and_push.sh