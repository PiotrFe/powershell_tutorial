
# Formatting output

Get-Service -Name "a*" | Format-List -Property Name,Status,DisplayName
Get-Service -Name "a*" | Format-Table -Property Name,Status,DisplayName -Wrap
Get-Service -Name "a*" | Out-GridView

# Top 10 processes taking highest cpu
Get-Process | Sort-Object cpu -Descending | Select-Object -First 10 | Format-Table processname,id,cpu,ws,pm

# Converting objects
$path = "XXX\Desktop\JS tutorials\Powershell"
$stylesheet = "XXX\Desktop\JS tutorials\Powershell\style.css"
$style = @"
<style>
tr {
    font-size: 25px;
    background-color: brown;
    color:aliceblue
}
</style>
"@

# to HTML
Get-Service | ConvertTo-Html -Property name, displayname, status
Get-ChildItem -Path $path -Recurse | ConvertTo-Html -Property name, fullname -CssUri $stylesheet | Out-File "$path\files_list.html" #-CssUri sometimes doesn't work
Get-ChildItem -Path $path -Recurse | ConvertTo-Html -Property name, fullname -Head $style | Out-File "$path\files_list.html" #-Head parameter to replace -CssUri

# to CSV
Get-Service -name Appinfo | ConvertTo-Csv -Delimiter ","

# to JSON
Get-Service -Name "*z*" | ConvertTo-Json

# to XML
Get-Service -Name "*z*" | ConvertTo-Xml


# Script for renaming files
Get-ChildItem -Path "$path\*.txt"  -Recurse | Rename-Item -NewName { $_.Name -replace "MYR 2020", "YER 2020" }