## Apply Terraform
1. Prepare your working directory for other commands
    ```shell
    cd ./terraform
    terraform init
    ```
2. [Optional] Create new workspace:
     
   ```shell
   terraform workspace new test
   ```
3. Create or update infrastructure
   ```shell
   terraform apply
   ```

## Private registry authentication
1. Edit makefile to set AWS_REGION and AWS_ACCOUNT_ID
2. To authenticate Docker to an Amazon ECR private registry use `make docker_login`. 
    Output:
    ```shell
    
    WARNING! Your password will be stored unencrypted in /home/arist0/.docker/config.json.
    Configure a credential helper to remove this warning. See
    https://docs.docker.com/engine/reference/commandline/login/#credentials-store
    
    Login Succeeded
    ```

## Build docker image
1. Edit makefile to set ECR_NAME
2. Use `make build` to build and push a new image to your private registry 