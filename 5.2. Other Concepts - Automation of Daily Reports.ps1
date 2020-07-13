$services_to_monitor = @("VSS", "WinRM", "TrustedInstaller", "Spooler", "msiserver")

Resolve-Path (".\")

<# To automate generating a report, we need to create .BAT file launching the script and add it to task scheduler

    exmple:

    report.bat
    powershell.exe C:\Daily_Report.ps1

    better to store data likes emails etc. in XML conf file

#>