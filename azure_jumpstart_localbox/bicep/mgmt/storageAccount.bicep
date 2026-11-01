@description('Storage Account type')
@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_ZRS'
  'Premium_LRS'
])
param storageAccountType string = 'Standard_LRS'

@description('Location for all resources.')
param location string = resourceGroup().location

param resourceTags object

@description('Resource Id of the subnet allowed to access the storage account. The subnet must have a Microsoft.Storage service endpoint. When empty, no network restrictions are applied.')
param allowedSubnetId string = ''

var storageAccountName = 'localbox${uniqueString(resourceGroup().id)}'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
    publicNetworkAccess: 'Enabled'
    networkAcls: empty(allowedSubnetId) ? {
      defaultAction: 'Allow'
      bypass: 'AzureServices'
    } : {
      defaultAction: 'Deny'
      bypass: 'AzureServices'
      virtualNetworkRules: [
        {
          id: allowedSubnetId
          action: 'Allow'
        }
      ]
    }
  }
  tags: resourceTags
}

output storageAccountName string = storageAccountName
