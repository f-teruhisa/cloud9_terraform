This is a configuration repository for Terraform structure of [AWS Cloud9](https://aws.amazon.com/jp/cloud9/).

# Rquirements
- Terraform version: `>= 1.1.7`

# Usage
## 1. Clone
- Clone this repository

```
git clone git@github.com:f-teruhisa/cloud9_terraform.git
```

## 2. Register workspace and repository at Terraform Cloud
- Create a Workspace in [Terraform Cloud](https://cloud.hashicorp.com/products/terraform) with `GitHub VCS` selected
- Set the cloned repository to Workflow

※ If use Terraform in local CLI without Terraform Cloud, can skip this step

## 3. Set IAM access key and secret in Variables of Workspace
- Set `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`as environment variables
- Need to set up the access key for IAM users using Cloud9 on the AWS console
  - If the IAM user created the Cloud9 instance and the user uses Cloud9 in the console are different, the IDE cannot be opened with 400 error

## 4. Run Plan & apply
- Run Plan and Apply on Terraform Cloud
- To execute in local CLI, use the following command

```
$ terraform plan
$ terraform apply
```

## 5. Open the editor from the Outputs URL
- If Terraform Apply is successful, the URL to open the Cloud9 IDE will appear in Terraform outputs
