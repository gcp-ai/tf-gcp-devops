# Terraform GCP DevOps Automation

This repository provides an automated solution for creating Infrastructure as Code (IaC) on Google Cloud Platform (GCP) for Data Lake and Vertex AI environment using **Terraform Cloud**. It allows you to manage your GCP resources efficiently while leveraging Terraform Cloud’s collaborative workflows, remote state management, and enhanced security.

## Overview

This repository is designed to automate the creation of essential GCP resources using Terraform Cloud. The configuration files within are designed to be flexible and scalable for DevOps teams working on various Google Cloud projects.

### Resources Currently Automated
The following GCP resources are provisioned using the Terraform configurations in this repository:

- **Virtual Private Cloud (VPC)**
- **VPC Peering**
- **BigQuery Dataset**
- **BigQuery Table**
- **Vertex AI Feature Group**
- **Vertex AI Feature Store**
  - **Feature Store Entity**
  - **Feature Store Entity Type**
- **Google Cloud Storage Bucket**
- **Enabling Google APIs**
- **Service Account Creation**
- **Vertex AI Dataset**
- **Vertex AI Endpoint**
  - **Endpoint Binding**
- **Vertex AI TensorBoard**
- **Vertex AI Workbench Instance**

We are continuously adding more resources and functionalities to this repository.

## Prerequisites

Before you begin, ensure the following:

- **Terraform Cloud** account with access to create workspaces.
- **Terraform CLI** version 0.12+ installed locally.
- Access to a **Google Cloud Project** with the necessary permissions.
- Enabled APIs for GCP services: Compute, BigQuery, Vertex AI, Cloud Storage, etc.

## Terraform Cloud Setup

Terraform Cloud allows you to manage and execute Terraform runs remotely. It provides enhanced collaboration, version control, and centralized infrastructure management.

### Step 1: Set Up a Workspace in Terraform Cloud
1. Go to [Terraform Cloud](https://app.terraform.io/) and sign in.
2. Create a new **Workspace**.
3. Connect the workspace to this GitHub repository:
   - Under "Version Control Workflow," link the workspace to your fork or clone of this repository.
   - Choose the branch where your Terraform configuration files are stored (typically `main` or `master`).

### Step 2: Configure Variables in Terraform Cloud
Once your workspace is set up, you’ll need to configure the necessary variables. These can be done under the **Variables** section in the workspace.

#### Required Variables:

- **PROJECT_ID**: The Google Cloud Project ID where resources will be created.
- **GOOGLE_CREDENTIALS**: JSON key file of a Google Cloud service account with sufficient permissions (stored as a sensitive variable in Terraform Cloud).

Variables can be sensitive, so make sure to mark them as sensitive when appropriate (e.g., credentials).

### Step 3: Run Terraform from Terraform Cloud

Once the variables are set, you can trigger Terraform runs directly from Terraform Cloud. Terraform Cloud will manage the execution plan, apply changes, and handle remote state management.

1. **Queue a Plan**: After pushing any changes to the repository, Terraform Cloud will automatically queue a plan to evaluate changes.
2. **Review the Plan**: Once the plan is ready, review the changes that Terraform will make.
3. **Apply the Plan**: If the changes look correct, confirm the apply to deploy your GCP resources.

Terraform Cloud will handle the execution of the configurations and apply the changes remotely.



## About Kloud Maker

At **Kloud Maker**, we understand that setting up Google Cloud Platform (GCP) for the first time can be overwhelming. That’s why we offer free assistance to help you get started with GCP. From setting up your account and creating projects to configuring cloud resources and securing your infrastructure, our team is here to guide you through every step. Whether you need help with automating infrastructure, managing costs, or deploying your first cloud application, we’ve got you covered.

Let [Kloud Maker](https://www.linkedin.com/in/manishguptalondon/) simplify your GCP journey, so you can focus on building and growing your business.



