# Healthcare Cloud Microservices System

## Project Overview
[Brief description]

## Architecture
[Link to design document]

## Prerequisites
- AWS Account
- GCP Account
- Docker Hub account
- Tools: terraform, kubectl, docker, etc.

## Setup Instructions

### 1. Clone Repository
\`\`\`bash
git clone https://github.com/Aarnav-JP/healthcare-cloud-system.git
cd healthcare-cloud-system
\`\`\`

### 2. Infrastructure Setup
\`\`\`bash
# AWS
cd terraform/aws
terraform init
terraform apply

# GCP
cd terraform/gcp
terraform init
terraform apply -var="gcp_project_id=YOUR_PROJECT"
\`\`\`

