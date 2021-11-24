AWS_REGION="eu-central-1"
AWS_ACCOUNT_ID="509264830098"
ECR_NAME="container-terraform-test"

docker_login:
	@aws ecr get-login-password --region $(AWS_REGION) | docker login --username AWS --password-stdin $(AWS_ACCOUNT_ID).dkr.ecr.$(AWS_REGION).amazonaws.com

build:
	@docker build -t $(AWS_ACCOUNT_ID).dkr.ecr.$(AWS_REGION).amazonaws.com/$(ECR_NAME):latest .
	@docker push $(AWS_ACCOUNT_ID).dkr.ecr.$(AWS_REGION).amazonaws.com/$(ECR_NAME):latest
