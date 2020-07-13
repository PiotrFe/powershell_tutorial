# Two types of error: terminating and non-terminating (the script continues to run)

# -ErrorAction Parameter (alias -EA) is a param to any Cmdlet to define the action to be taken upon error; defines action for a single cmdlet

Write-Error -Message "4" -ErrorAction Inquire

# $ErrorActionPreference is a PS variable which sets the preference for action to be taken on error for all different Cmdlets

$ErrorActionPreference = "Inquire"

Write-Error -Message "4"

# -ErrorVariable (alias -EV) stores the error message and allows to use it later

Write-Error -Message "4" -ErrorAction SilentlyContinue -ErrorVariable "error_var"
Write-Output $error_var

# Try - Catch

try {
    #statement1
} catch {
    #statement2
} finally {
    #statement3
}

try {
    Get-Help $need_help_for -ErrorAction Stop -ErrorVariable $err
} catch {
    Write-Host "The cmdlet you are trying to run does not exist" -BackgroundColor Yellow
    Write-Host "Error: $err" -BackgroundColor Yellow
}

