# Details of user login and smpt server

$SMtPServer = "smtp.gmail.com"
$SMTPPort = "587"


$subject = "mail subject"

$body = "Dir Sir/Madam,
        
        This is a system generated email. Please do not reply.

        Best,
        Team

"

$message = New-Object System.Net.Mail.MailMessage

$message.Subject = $subject
$message.Body = $body
$message.to.Add($to)
$message.cc.Add($cc)
$message.From = "xxxr@gmail.com"

$smtp = New-Object System.Net.Mail.SmtpClient($SMtPServer, $SMTPPort)

$smtp.EnableSsl = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($username, $password)

$smtp.send($message)

