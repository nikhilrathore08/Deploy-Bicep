@description('Name of the storage account')
var storageAccountName = 'mystorage${uniqueString(resourceGroup().id)}'

@description('Location for the storage account')
param location string = 'eastus'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

output storageAccountId string = storageAccount.id
