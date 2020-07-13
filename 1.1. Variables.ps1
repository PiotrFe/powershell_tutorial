Set-Variable -Name "name" -Value "piotr"
$name.GetType()

$bool = $true
$bool.getType()

$int = 10;
$int.GetType()

$int2 = 11;

$sum = $int + $int2
$sentence = "$name is a complete idiot"

Write-Output $sentence

$sentence.Length
$sentence.Contains("is")
$sentence.Contains("Is")
$sentence.IndexOf("is")
$sentence.Trim()
$sentence.ToUpper()
$sentence.ToLower()
$sentence.Replace("piotr", "maria")

$longsentence = @"
    "Who the hell do you think you are?"
    "No one, said she. Just a regular girl" 
"@

$longsentence -is [String]
$longsentence | Get-Member

#Typecasting

#method 1 - left side; variable not longer reusable for reassigning type
[int]$int3 = 4

#method 2 - right side; variable can be assigned another type
$int4 = [int]4
