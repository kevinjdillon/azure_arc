az stack-hci-vm image create `
  --resource-group $rg `
  --custom-location $customLocationId `
  --location $location `
  --name "ws2022-azure-edition-core" `
  --os-type "Windows" `
  --publisher "microsoftwindowsserver" `
  --offer "windowsserver" `
  --sku "2022-datacenter-azure-edition-smalldisk" `
  --version "20348.5773.261025"