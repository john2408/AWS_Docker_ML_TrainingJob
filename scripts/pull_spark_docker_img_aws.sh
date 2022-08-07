# https://docs.aws.amazon.com/sagemaker/latest/dg/adapt-training-container.html
# Reference: https://medium.com/codex/push-docker-image-to-aws-ecr-e9718df8a729
# Ref: https://github.com/aws/amazon-sagemaker-examples/blob/main/advanced_functionality/custom-training-containers/basic-training-container/scripts/build_and_push.sh

# Spark Images: https://github.com/aws/sagemaker-spark-container
# Conatiner Releases: https://github.com/aws/sagemaker-spark-container/releases

ACCOUNT_ID_SPARK="906073651304"
REGION="eu-central-1"
SPARK_IMAGE="sagemaker-spark-processing:3.1-cpu-py39-v1.2"

# Authenticate in AWS Account
sudo docker login -u AWS -p $(aws ecr get-login-password --region $REGION) $ACCOUNT_ID_SPARK.dkr.ecr.$REGION.amazonaws.com

# Pull Spark Image
sudo docker pull $ACCOUNT_ID_SPARK.dkr.ecr.$REGION.amazonaws.com/$SPARK_IMAGE

