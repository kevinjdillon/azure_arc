using './main.bicep'

//pwc tenant
// param tenantId = '7a30c9f7-34a2-4098-a837-3c701caf7f05'
// param spnProviderId = 'b927f7eb-597e-4009-8e1d-3848fed7183b'

//BAMI tenant
param tenantId = '9dd71053-a383-4979-8ead-61e65b0ece30'
param spnProviderId = '25484d8b-3cab-46d4-ab6d-3c7e7047e421'

param windowsAdminUsername = 'pwcadmin'
param windowsAdminPassword = '1qaz!QAZ2wsx@WSX'
param logAnalyticsWorkspaceName = 'LocalBox-Workspace'
param natDNS = '8.8.8.8'
param githubAccount = 'kevinjdillon'
param githubBranch = 'main'
param deployBastion = false
param location = 'usgovarizona'
param azureLocalInstanceLocation = 'usgovarizona'
param rdpPort = '3389'
param autoDeployClusterResource = false
param autoUpgradeClusterResource = false
param vmAutologon = true
param vmSize = 'Standard_E32s_v5'
param enableAzureSpotPricing = false
param governResourceTags = true
param tags = {
  Project: 'jumpstart_LocalBox'
}
