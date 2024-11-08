# Prerequusites
Docker
brew install terragrunt
aws cli - brew install awscli
terraform

# Run local stack with Docker
```shell
docker run \
  --rm -it \
  -p 127.0.0.1:4566:4566 \
  -p 127.0.0.1:4510-4559:4510-4559 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  localstack/localstack
```

# Configure localstack profile
export AWS_PROFILE=localstack

[profile localstack]
region=ap-southeast-1
output=json
endpoint_url = http://localhost:4566

[localstack]
aws_access_key_id=test
aws_secret_access_key=test

# Run terraform 
```shell
terraform init
terraform apply
```

# Run terragrunt
```shell
cd environments/env
terragrunt run-all plan
```