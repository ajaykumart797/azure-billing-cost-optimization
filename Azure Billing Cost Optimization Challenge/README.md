# Azure Billing Cost Optimization 💰⚙️

This repo contains a serverless solution to optimize storage cost for read-heavy billing data in Azure Cosmos DB by archiving old records into Azure Blob Storage.

## 📐 Architecture
- Cosmos DB for active records
- Azure Functions for archival/retrieval
- Blob Storage (Cool tier) for archived records
- Azure API Management to expose consistent APIs

## 🚀 Features
- Zero data loss
- No downtime
- No change in API contracts
- >70% monthly cost savings

## 📦 Deploying
See `terraform/main.tf` and `workflows/deploy.yml`
