@export()
type deploymentOptions = {  
  @minLength(3)
  @maxLength(10)
  applicationName: string
  environmentName : 'dev' | 'test' | 'qa' | 'prod'
}

param options deploymentOptions

var location = resourceGroup().location

module webapp './modules/azure-webapp.bicep' = {
  name: 'webapp'
  params: {
    deploymentOptions: options
    location: location
  }
}

module keyvault './modules/azure-keyvault.bicep' = {
  name: 'keyvault'
  params: {
    deploymentOptions: options
    location: location
  }
}

module sqlserver './modules/azure-sqldbs.bicep' = {
  name: 'sqlserver'
  params: {
    deploymentOptions: options
    location: location
  }
}

module comms './modules/azure-comms.bicep' = {
  name: 'comms'
  params: {
    deploymentOptions: options
  }
}
