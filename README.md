# Databricks ETL Pipeline with Terraform

This repository contains Terraform code to create an ETL pipeline in Databricks. It provisions:

1. A cluster for running ETL jobs.
2. A notebook that performs an ETL task.
3. A scheduled job to run the ETL notebook.

## Prerequisites

- Terraform installed on your local machine.
- A Databricks workspace.
- A Databricks Personal Access Token (PAT). Generate one from your workspace settings.

## Usage

```sh
terraform init
terraform plan
terraform apply
```
