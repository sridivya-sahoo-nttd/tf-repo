# Terraform Azure Practice Project

This project demonstrates how to securely handle sensitive information in Terraform configurations.

## Sensitive Information Management

### Method 1: Using terraform.tfvars (Recommended for local development)

1. Copy the example file:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Edit `terraform.tfvars` with your actual values:
   ```hcl
   tenant_id       = "your-actual-tenant-id"
   subscription_id = "your-actual-subscription-id"
   ```

3. The `terraform.tfvars` file is gitignored, so it won't be committed to the repository.

### Method 2: Using Environment Variables (Recommended for CI/CD)

Set environment variables with the `TF_VAR_` prefix:

```bash
export TF_VAR_tenant_id="your-tenant-id"
export TF_VAR_subscription_id="your-subscription-id"
```

### Method 3: Using Azure CLI Authentication (Alternative)

If you're authenticated with Azure CLI, you can remove the explicit tenant_id and subscription_id from the provider block, and Terraform will use your current Azure CLI session.

### Method 4: Using Command Line Variables

Pass variables directly when running Terraform:

```bash
terraform plan -var="tenant_id=your-tenant-id" -var="subscription_id=your-subscription-id"
terraform apply -var="tenant_id=your-tenant-id" -var="subscription_id=your-subscription-id"
```

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Plan the deployment:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

## Security Best Practices

- ✅ **DO**: Use variables for sensitive data
- ✅ **DO**: Add `terraform.tfvars` to `.gitignore`
- ✅ **DO**: Use environment variables in CI/CD pipelines
- ✅ **DO**: Mark sensitive variables with `sensitive = true`
- ❌ **DON'T**: Hardcode sensitive values in `.tf` files
- ❌ **DON'T**: Commit `terraform.tfvars` to version control
- ❌ **DON'T**: Include sensitive data in state files shared publicly

## Files in this project

- `main.tf` - Main Terraform configuration
- `variables.tf` - Variable definitions
- `terraform.tfvars.example` - Example values file
- `terraform.tfvars` - Your actual values (gitignored)
- `.gitignore` - Prevents sensitive files from being committed
