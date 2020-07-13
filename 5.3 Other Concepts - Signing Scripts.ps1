# updated process:

# https://stackoverflow.com/questions/84847/how-do-i-create-a-self-signed-certificate-for-code-signing-on-windows


# Step 1 - creating a certificate
New-SelfSignedCertificate -DnsName www.piotrferensztajn.com -Type CodeSigning -CertStoreLocation cert:\CurrentUser\My

# Step 2 - Export the certificate without the private key:
Export-Certificate -Cert (Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert)[0] -FilePath "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\code_signing.crt" 

# Step 3 - Import as a trusted published
$cert_path = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\code_signing.crt"
Import-Certificate -FilePath $cert_path -Cert Cert:\CurrentUser\TrustedPublisher

# Step 4 - Import it as a Root certificate authority.
Import-Certificate -FilePath $cert_path -Cert Cert:\CurrentUser\Root

# Step 5 - Sign the script (assuming here it's named script.ps1, fix the path accordingly).
$script = "C:\Users\Hrabia i Mysz\Desktop\JS tutorials\Powershell\signed.ps1"
Set-AuthenticodeSignature $script -Certificate (Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert)
