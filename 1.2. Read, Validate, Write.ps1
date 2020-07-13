[string]$name = Read-Host "enter your name"
[int]$age = Read-Host "enter you age"
[DateTime]$date = Read-Host "enter your dob"
[char]$response = Read-Host "are you ready? (y/n)"
$password = Read-Host "enter your password" -AsSecureString

[validateSet("y", "Y", "n", "N")]$response2 = Read-Host "are you ready? (y/n)"
[validateLength(5, 50)]$name = Read-Host "enter your name"

#write-host doesn't send objects to pipeline and cannot be stored in a variable
Write-Host "Colorful text" -ForegroundColor Cyan
Write-Host "Colorful text" -ForegroundColor Cyan -BackgroundColor DarkGray

Write-Output "This is an output message"
Write-Error "This is an error message"
Write-Warning "This is a warning message"

Write-Debug "This is a debug message" -Debug
Write-Verbose "This is verbose" -Verbose


