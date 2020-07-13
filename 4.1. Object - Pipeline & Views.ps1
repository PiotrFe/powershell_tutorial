$path = "XXX\Powershell"

Get-ChildItem -Path "C:\Windows" | Out-File -FilePath "$path\windows.txt"

# Select-Object
Get-Service -Name "a*" | Select-Object -First 5 -Property BasePriority,CPU,Name

# Where-Object
Get-Process | Where-Object { $_.CPU -ge 100 }
Get-Service | Where-Object { $_.Name -like "*a*" } | Where-Object { $_.Status -eq "Stopped" }

# Group-Object
Get-Service | Group-Object -Property ServiceType

# Sort-Object
Get-Service | Group-Object -Property ServiceType | Sort-Object "Count" -Descending | Select-Object -First 10 -ExpandProperty group

# ForEach_Object
Get-Process | ForEach-Object {
    Write-Host "Processing: " $_.Name
}

1..10 | ForEach-Object {
    Write-Output "Hello world"
}

Get-ChildItem -Path "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell" -Recurse | ForEach-Object {
    Write-Host $_.FullName
}

# Practical example: remove all files older than 10 days
$clear_dir = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell"
$retention_days = 10

Get-ChildItem $clear_dir -File -Recurse  | 
    Where-Object { $_.LastWriteTime -lt (Get-Date).adddays(-$retention_days) } | % {
        # Deleting the file
        $_.fullname | del -Force -WhatIf
    }

Get-ChildItem $clear_dir -File | Get-Member