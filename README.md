# Summary

A simple bicep template that creates an App Service Plan, a Web App, a Key Vault, a SQL Server instance with an App DB and a Jobs DB, an instance of Azure Communications Service, and an Email Service.

# Getting Started

1. Open the root project folder in VS Code (with both the Bicep extension for VS Code and the Azure CLI installed).

3. In VS Code's Terminal window, log into your Azure tenant:

```
az login --tenant <YOUR_TENANT_ID>
```

2. From the same Terminal window, test your deployment:

```
az deployment group what-if --resource-group test-rg-uswest --parameters .\parameters\azure-architecture-dev.bicepparam  --template-file .\azure-architecture.bicep
```

3. From the same Terminal window, create your deployment:

```
az deployment group create --resource-group test-rg-uswest --parameters .\parameters\azure-architecture-dev.bicepparam  --template-file .\azure-architecture.bicep
```
