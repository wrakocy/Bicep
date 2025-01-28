param deploymentOptions object
param location string

resource sqlServer 'Microsoft.Sql/servers@2024-05-01-preview' = {
  name: '${deploymentOptions.applicationName}-${deploymentOptions.environmentName}-sqlserver-01'
  location: location
  properties: {    
    administratorLogin: '${deploymentOptions.applicationName}_admin'
    administratorLoginPassword: 'Th!sIsAStr0ng-IshT3mpP@ssw0rd'
  }

  // App DB
  resource appDatabase 'databases' = {
    name: '${deploymentOptions.applicationName}-${deploymentOptions.environmentName}-sqldb-appdb-01'
    location: location
    sku: {
      name: 'Basic'
    }
  }

  // Jobs DB
  resource jobsDatabase 'databases' = {
    name: '${deploymentOptions.applicationName}-${deploymentOptions.environmentName}-sqldb-jobsdb-01'
    location: location
    sku: {
      name: 'Basic'
    }
  } 
}
