# -------------------------------------
# While

$i = 1

while ($i -lt 10) {
    Write-Output $i
    $i += 1
}

# -------------------------------------
# Do While

$num = 0

do { 
    Write-Output $num
    $num += 1
} while ($num -lt 10)

# -------------------------------------
# For

for ($i = 0; $i -le 10; $i++) {
    Write-Output $i
}

# -------------------------------------
# ForEach

$studentNames = @("Peter", "Marie", "Josie");

foreach($name in $studentNames) {
    Write-Output $name
}

$studentHash = @{
    "Student1" = "Peter";
    "Student2" = "Marie";
    "Student3" = "Jossie";
}
foreach($key in $studentHash.Keys) {
    Write-Output $studentHash[$key]
}

