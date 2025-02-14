
## Usage

1. Clone the repository:

   ```sh
   git clone https://github.com/hitesh616/terraform-expriments.git 
   ```

cd nginx-deployement

2. Initialize Terraform:

   ```sh
   terraform init
   ```
3. Apply the Terraform configuration using the appropriate environment variable file:

```sh
terraform apply --var-file=vars/dev-terraform.tfvars    ```
```

4. Confirm the apply action with `yes`.
