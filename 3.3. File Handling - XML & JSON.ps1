# Reading XML file
[xml]$xml_content = Get-Content "comp_info.xml"

$xml_content.MAIN_NODE
$xml_content.MAIN_NODE.COMP

$xml_content.MAIN_NODE.FirstChild
$xml_content.GetElementsByTagName("COMP")

foreach($entity in $xml_content.GetElementsByTagName("COMP")) {
    Write-Output $entity.IP
}

$path = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell"

Get-Process | Select-Object -First 2 | Sort-Object "id" | Export-Clixml "$path\output.xml"


# Reading JSON file
$json_object = Get-Content ".\sample_json.json" | Out-String | ConvertFrom-Json
$json_object.COMP_INFO
