Get-WmiObject

#Get list of namespaces
Get-WmiObject -Namespace 'root' -Class '__namespace' | Select-Object Name

#Get list of classes
Get-WmiObject -Namespace 'root/cimv2' -List

#Fetching all properties by class name
Get-WmiObject -Class 'win32_service'

#WMI on remote 
Get-WmiObject -Class 'win32_service' -ComputerName 'localhost'

#Also posible to run as a WMI query language
Get-WmiObject -Query "select * from win32_Service"
