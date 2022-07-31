Steps: 

- (1) Configure AWS CLI
- (2) Create SageMaker Role - run create-sagemaker-role.sh - then attach AmazonSageMakerFullAccess policy to this role on SageMaker UI
- (3) Configure Docker Hub Login 
- (4) run script build_and_push.sh