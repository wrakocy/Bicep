param deploymentOptions object
param location string

resource keyVault 'Microsoft.KeyVault/vaults@2024-04-01-preview' = {
  name: '${deploymentOptions.applicationName}-${deploymentOptions.environmentName}-keyvault-01'
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    accessPolicies: [] // Define access policies here
  }
}
