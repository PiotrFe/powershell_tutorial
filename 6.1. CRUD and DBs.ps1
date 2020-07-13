$connection_string = "blablabla"

[System.Reflection.Assembly]::LoadWithPartialName("System.Data.OracleClient")

$connection = New-Object System.Data.OracleClient.OracleConnection($connection_string)

$connection.open()