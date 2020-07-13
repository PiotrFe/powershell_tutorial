Clear-Host

if (Test-Path "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\text.txt") {
    Write-Output "Location exists"
    $file_content = Get-Content "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\text.txt" 
    # -Tail 2 - tail allows to specify number of lines to be read
    #[2] - allows to read the second line
    #[2..5] - range of lines
    Write-Output $file_content
     }
 else {
    Write-Output "File does not exist"
 }

 $file_content | Where-Object { $_ -like "*error*" }
 $file_content | Select-String -Pattern "error"

 # Getting content from multiple files
 Select-String -Path "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\*.txt" -Pattern "error" 

 # Writing to a file
 $file_path = "XXX\Desktop\JS tutorials\Powershell\output.txt"
 Write-Output "Some text" | Out-File -FilePath $file_path
 Write-Output "Additional text" | Out-File -FilePath  $file_path -Append

 