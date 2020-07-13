1 -le 2
"abc" -eq "abc"
"abc" -ceq "ABC" #case sensitive
"abc" -like "*bc"
"abc" -notlike "*bc"
"abc" -clike "*BC"

#this will return all values meeting the condition
7, 8, 9 -lt 9


@(
"country XYZ",
"country ABC",
"country SSS",
"country SSS"
) -like "*SSS*"

#match matches based on regex
"Sunday", "Monday", "Tuesday" -match "sun"

"powershell" -contains "shell"
