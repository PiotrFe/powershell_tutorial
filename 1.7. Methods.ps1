# function Verb-Noun { Statement 1, Statement 2 }

Clear-Host

function Say-Hello {
    Write-Output "Hello"
    Write-Output "Hello very much"

}

Say-Hello

#---------------------------

function Add-Numbers {
    $total = $args[0] + $args[1]
    Write-Output $total
}

Add-Numbers 10 2

#---------------------------

function Say-Hello($names) {
    foreach($name in $names) {
        Write-Output "Hi, my name is $name"
    }
}

Say-Hello(@("Peter", "Marie", "John"))

#---------------------------

function Generate-Greeting($names, $greeting) {
    foreach($name in $names) {
        Write-Output $greeting $name
    }
}

$names = @("Piotr", "Marie", "Marta");
$greeting = "Hello team, my name is ";

Generate-Greeting($names, $greeting)

#---------------------------
#Named parameters

function Do-Introduction {
    param
    (
        [string]$name,
        [string]$profession = "student", #default value
        [int]$age
    )
    
    Write-Output "Hello there! My name is $name, I am $profession and I am $age years old"
}

Do-Introduction -name "peter" -profession "programmer" -age 34
Do-Introduction -age 32 -name "Jane"







