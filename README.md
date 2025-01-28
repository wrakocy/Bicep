# Summary

A simple bicep template that creates an App Service Plan, a Web App, a Key Vault, a SQL Server instance with an App DB and a Jobs DB, an instance of Azure Communications Service, and an Email Service.

# Getting Started

1. If you haven't already, install VS Code, the Bicep extension for VS Code and the latest version of the Azure CLI.
   
2. In VS Code, open the root project folder.

3. In VS Code's Terminal window, log into your Azure tenant:

```
az login --tenant <YOUR_TENANT_ID>
```

4. From the same Terminal window, test your deployment:

```
az deployment group what-if --resource-group test-rg-uswest --parameters .\parameters\azure-architecture-dev.bicepparam  --template-file .\azure-architecture.bicep
```

5. From the same Terminal window, create your deployment:

```
az deployment group create --resource-group test-rg-uswest --parameters .\parameters\azure-architecture-dev.bicepparam  --template-file .\azure-architecture.bicep
```
