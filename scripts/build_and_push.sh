# Reference: https://medium.com/codex/push-docker-image-to-aws-ecr-e9718df8a729
# Ref: https://github.com/aws/amazon-sagemaker-examples/blob/main/advanced_functionality/custom-training-containers/basic-training-container/scripts/build_and_push.sh

ACCOUNT_ID=$1
REGION=$2
REPO_NAME=$3

docker build -f ./../docker/Dockerfile -t $REPO_NAME ../docker

docker tag $REPO_NAME $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:latest

# Update fro AWS CLI V2: 
# https://stackoverflow.com/questions/34689445/cant-push-image-to-amazon-ecr-fails-with-no-basic-auth-credentials

docker login -u AWS -p $(aws ecr get-login-password --region $REGION) $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com

docker push $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPO_NAME:latest