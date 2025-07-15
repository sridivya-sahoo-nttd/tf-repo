# Terraform Azure Reusable Template

This folder is a reusable template for deploying an Azure resource group and storage account using Terraform.

## How to Use

1. **Copy the template folder to your project.**
2. **Rename `terraform.tfvars.example` to `terraform.tfvars` and fill in your actual values.**
3. **Run the following commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Files
- `main.tf`: Main configuration, uses variables for all sensitive and environment-specific values.
- `variables.tf`: All input variables, with validation and defaults.
- `terraform.tfvars.example`: Template for your actual values (never commit secrets).
- `outputs.tf`: Shows key outputs after apply.
- `README.md`: Documentation and usage instructions.

## Security
- Sensitive values are referenced as variables.
- `.gitignore` should exclude `terraform.tfvars` and other secret files.

## Customization
- Override any variable in `terraform.tfvars` or via environment variables.
- Storage account name is auto-generated if not provided, ensuring global uniqueness.

---

**This template is ready for team use and safe sharing!**
