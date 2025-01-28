param deploymentOptions object
param location string

var serverFarmSku = deploymentOptions.environmentName == 'prod' ? 'B1' : 'F1'

// Web app service plan
resource serverFarm 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: '${deploymentOptions.applicationName}-${deploymentOptions.environmentName}-asp-01'
  location: location
  sku: {
    name: serverFarmSku
  }
}

// Web app
resource webApp 'Microsoft.Web/sites@2024-04-01' = {
  name: '${deploymentOptions.applicationName}-${deploymentOptions.environmentName}-webapp-01'
  location: location
  properties: {
    serverFarmId: serverFarm.id    
  }
}
