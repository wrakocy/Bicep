## SUMMARY
A simple bicep template that creates an App Service Plan, a Web App, a Key Vault, a SQL Server instance with an App DB and a Jobs DB, an instance of Azure Communications Service, and an Email Service that depends on it.

## LOGIN
az login --tenant <YOUR_TENANT_ID>

## TEST DEPLOYMENT
az deployment group what-if --resource-group test-rg-uswest --parameters .\parameters\azure-architecture-dev.bicepparam  --template-file .\azure-architecture.bicep

## CREATE DEPLOYMENT
az deployment group create --resource-group test-rg-uswest --parameters .\parameters\azure-architecture-dev.bicepparam  --template-file .\azure-architecture.bicep