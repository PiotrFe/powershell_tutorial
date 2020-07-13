# Invoke-Expressio runs a string as a command

$Command = 'Get-Process | Where-Object { $_.CPU -gt 100 }' 
Invoke-Expression $Command

