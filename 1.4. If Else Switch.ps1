if (1 -lt 2) {
Write-Output "Condition met"

} else {
Write-Host "FALSE!"
}

[int]$num = Read-Host "Enter a number"

if ($num -le 100) { Write-Output "The number is too low"} else { Write-Output "Number is high enough"}

[int]$num2 = Read-Host "Enter a number"

if (($num2 -gt 100) -and ($num2 -lt 1000)) 
    {Write-Output "Number is somewhere between 100 and 1000"}
else 
    {Write-Output "Number out of range"}


[int]$num3 = Read-Host "Enter a number"

switch ($num3) {
    10 {"The number is 10"}
    20 {"The number is 20"}
    default {"The number is neither 10 nor 20"}

}