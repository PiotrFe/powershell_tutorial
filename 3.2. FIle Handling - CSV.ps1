$csv_path = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\test.csv"


try {
    if (Test-Path $csv_path) {
        $csv_content = Import-Csv "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\*csv"
        Write-Output $csv_content
    } else {
        Write-Output "File does not exist"
    }

} catch {
    Write-Output "Something went wrong"
}

$csv_content | Sort-Object Marks
$csv_content| Select-Object -First 2
$csv_content | Where-Object { $_.Name -like "P*" }

# Add-Content will create a file if it does not exist or add content to an existing file

$csv_path2 = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\students.csv"

Add-Content -Path $csv_path2 -Value '"Name","Class","Percentage"'

$student_data = @(
 '"Student 0","Science","95%"'
 '"Student 1", "Maths","98%"'
 '"Student 2","Geography","60%"'
)

$student_data | foreach { Add-Content -Path $csv_path2 -Value $_ }

$csv_updatedcontent = Import-Csv $csv_path2

# Exporitng CSV
Import-Csv $csv_path2 | Sort-Object Percentage | Export-Csv "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\sorted.csv" -NoTypeInformation

