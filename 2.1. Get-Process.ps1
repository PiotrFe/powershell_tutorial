(Get-Process).GetType()

Get-Process | Sort-Object -Property cpu -Descending | Select-Object -First 10

Get-Process -Name "*powershell*"

Get-Process -Name "*powershell*" | select *

Get-Process | Where-Object { $_.CPU -gt 100  } | Out-File myTop_process.txt

Get-Process -Name "*notepad*" |  Stop-Process #-WhatIf

Start-Process "notepad" -WindowStyle Minimized

Get-Help Get-Process -ShowWindow