$path = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell"

Get-Process | Select-Object -Last 4 | Export-Clixml "$path\objects.xml"

Import-Clixml "$path\objects.xml" | Select-Object -Last 2