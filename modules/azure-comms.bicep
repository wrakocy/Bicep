param deploymentOptions object

// Communication service (SMS)
resource communicationService 'Microsoft.Communication/communicationServices@2023-06-01-preview' = {
  name: '${deploymentOptions.applicationName}-all-acs-01'
  location: 'global'
  properties: {
    dataLocation: 'unitedstates'
  }
}

// Email service
resource emailConfiguration 'Microsoft.Communication/emailServices@2023-06-01-preview' = {
  name: '${deploymentOptions.applicationName}-all-email-01'
  location: 'global' 
  properties: {
    dataLocation: 'unitedstates'
  }
  dependsOn: [
    communicationService
  ]  
}
