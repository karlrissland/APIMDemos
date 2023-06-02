targetScope = 'subscription'

@description('The environment for which the deployment is being executed')
@allowed([
  'dev'
  'uat'
  'prod'
])
param environment string

param location string = deployment().location

// Variables
var uniqueSuffix = substring(uniqueString(concat(subscription().id),environment),0,5)
var workloadName = 'demos'
var resourceSuffix = '${uniqueSuffix}-${workloadName}-${environment}'
var ResourceGroupName = 'apim-${resourceSuffix}'

resource RG 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: ResourceGroupName
  location: location
}

module APIMDeploy 'apim.bicep' = {
  name: 'apim'
  scope: RG
  params: {
    resourceSuffix: resourceSuffix
    location: location
    publisherName: 'Microsoft'
    publisherEmail: 'someone@microsoft.com'
    sku: 'Developer'
    skuCount: 1
  }
}

module FunctionDeploy 'functions.bicep' = {
  name: 'function'
  scope: RG
  params: {
    resourceSuffix: resourceSuffix
    location: location
  }
}

output AZURE_RESOURCE_GROUP_NAME string = ResourceGroupName
output API_MANAGEMENT_SERVICE_NAME string = APIMDeploy.outputs.AZURE_RESOURCE_GROUP_NAME
output FUNCTION_SERVICE_NAME string = FunctionDeploy.outputs.FUNCTION_SERVICE_NAME
