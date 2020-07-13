$webrequest = Invoke-WebRequest -Uri "https://www.mckinsey.com/#"
$status_code = $webrequest.StatusCode
$status_desc = $webrequest.StatusDescription

# get all embedded links
$links = $webrequest.Links | Select-Object href 

# reading raw content
$content = $webrequest.RawContent

# reading a table
$webrequest = Invoke-WebRequest -Uri "https://www.w3schools.com/html/html_tables.asp"
$table = $webrequest.ParsedHtml.getElementsByTagName("table")[0].outerHTML

# reading form fields
$webrequest = Invoke-WebRequest -Uri "https://www.w3schools.com/html/html_forms.asp"
$fields = $webrequest.Forms.fields

# downloading a file
$url = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Bruno_Schulz%2C_portrait.jpg"

# method 1
$web_client = New-Object System.Net.WebClient
$web_client.DownloadFile($url, "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\img1.jpg")

#method 2
Invoke-WebRequest $url -OutFile "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\img1.jpg"



