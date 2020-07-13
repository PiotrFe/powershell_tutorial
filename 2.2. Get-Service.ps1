Get-Service | Sort-Object -Descending Status

Get-Service -Name "*ser*" | Sort-Object name

Get-Service -Name "a*" | Where-Object { $_.Status -eq "running" } | Select-Object -First 3

Get-Service -Name camsvc | Stop-Service -WhatIf
Get-Service -Name camsvc | Start-Service -WhatIf


