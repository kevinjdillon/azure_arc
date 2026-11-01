using './main.bicep'

param tenantId = '7a30c9f7-34a2-4098-a837-3c701caf7f05'
param spnProviderId = 'b927f7eb-597e-4009-8e1d-3848fed7183b'
param windowsAdminUsername = 'pwcadmin'
param windowsAdminPassword = 'vR8!qT3#nL7@pX2%'
param logAnalyticsWorkspaceName = 'LocalBox-Workspace'
param natDNS = '8.8.8.8'
param githubAccount = 'kevinjdillon'
param githubBranch = 'main'
param deployBastion = false
param location = 'usgovvirginia'
param azureLocalInstanceLocation = 'usgovvirginia'
param rdpPort = '3389'
param autoDeployClusterResource = false
param autoUpgradeClusterResource = false
param vmAutologon = true
param vmSize = 'Standard_E32as_v6'
param enableAzureSpotPricing = false
param governResourceTags = true
param tags = {
  Project: 'jumpstart_LocalBox'
}
