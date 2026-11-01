Register-AzResourceProvider -ProviderNamespace "Microsoft.Compute"
Register-AzResourceProvider -ProviderNamespace "Microsoft.HybridCompute"
Register-AzResourceProvider -ProviderNamespace "Microsoft.GuestConfiguration"
Register-AzResourceProvider -ProviderNamespace "Microsoft.HybridConnectivity"
Register-AzResourceProvider -ProviderNamespace "Microsoft.AzureStackHCI"
Register-AzResourceProvider -ProviderNamespace "Microsoft.Kubernetes"
Register-AzResourceProvider -ProviderNamespace "Microsoft.KubernetesConfiguration"
Register-AzResourceProvider -ProviderNamespace "Microsoft.ExtendedLocation"
Register-AzResourceProvider -ProviderNamespace "Microsoft.ResourceConnector"
Register-AzResourceProvider -ProviderNamespace "Microsoft.HybridContainerService"
Register-AzResourceProvider -ProviderNamespace "Microsoft.Attestation"
Register-AzResourceProvider -ProviderNamespace "Microsoft.Storage"
Register-AzResourceProvider -ProviderNamespace "Microsoft.Insights"
Register-AzResourceProvider -ProviderNamespace "Microsoft.KeyVault"
Register-AzResourceProvider -ProviderNamespace "Microsoft.Network"
Register-AzResourceProvider -ProviderNamespace "Microsoft.EdgeMarketplace"

Register-AzProviderFeature -ProviderNamespace "Microsoft.Network" -FeatureName "AllowBringYourOwnPublicIpAddress"

  do {
      Start-Sleep -Seconds 10
      $feature = Get-AzProviderFeature -ProviderNamespace "Microsoft.Network" -FeatureName "AllowBringYourOwnPublicIpAddress"
  } until ($feature.RegistrationState -eq "Registered")

Register-AzResourceProvider -ProviderNamespace "Microsoft.Network"