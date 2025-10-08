# Google App Engine Infrastructure Setup

This document provides a comprehensive guide to setting up and deploying the `weather-app` using Google App Engine (GAE) with Terraform and GitHub Actions.

## Terraform Configuration

### Files Overview

- **`main.tf`**: Configures the GAE service, including environment variables, scaling, and health checks.
- **`variables.tf`**: Defines the variables used in the Terraform configuration.
- **`outputs.tf`**: Specifies the outputs, such as the service URL.
- **`provider.tf`**: Configures the Google provider for Terraform.
- **`iam.tf`**: Sets up IAM roles and permissions for the service account.

### Setup Instructions

1. **Install Terraform**: Ensure Terraform is installed on your local machine.
2. **Configure Variables**: Update `variables.tf` with your project-specific details.
3. **Initialize Terraform**: Run `terraform init` to initialize the configuration.
4. **Apply Configuration**: Use `terraform apply` to provision the resources.

## CI/CD Pipeline

### Workflow Overview

- **Build Stage**: Installs dependencies and runs tests.
- **Deploy Stage**: Deploys the application to GAE using `gcloud`.

### Setup Instructions

1. **GitHub Secrets**: Add `GCP_SA_KEY` and `GCP_PROJECT_ID` to your GitHub repository secrets.
2. **Trigger Deployment**: Push changes to the `main` branch to trigger the pipeline.

## Best Practices

- **Security**: Ensure your service account key is kept secure and not exposed in your codebase.
- **Scalability**: Configure automatic scaling based on your application's needs.
- **Monitoring**: Set up monitoring and logging for your GAE service to track performance and errors.

## Additional Resources

- [Terraform Documentation](https://www.terraform.io/docs/)
- [Google Cloud App Engine Documentation](https://cloud.google.com/appengine/docs)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)