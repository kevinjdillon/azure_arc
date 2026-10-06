using './main.bicep'

param tenantId = '9dd71053-a383-4979-8ead-61e65b0ece30'
param spnProviderId = '25484d8b-3cab-46d4-ab6d-3c7e7047e421'
param windowsAdminUsername = 'pwcadmin'
param windowsAdminPassword = '12qwaszx!@QWASZX'
param logAnalyticsWorkspaceName = 'LocalBox-Workspace'
param natDNS = '8.8.8.8'
param githubAccount = 'microsoft'
param githubBranch = 'main'
param deployBastion = false
param location = 'usgovvirginia'
param azureLocalInstanceLocation = 'usgovvirginia'
param rdpPort = '3389'
param autoDeployClusterResource = true
param autoUpgradeClusterResource = false
param vmAutologon = true
param vmSize = 'Standard_E32as_v6'
param enableAzureSpotPricing = false
param governResourceTags = true
param tags = {
  Project: 'jumpstart_LocalBox'
}
