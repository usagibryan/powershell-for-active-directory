$computers = Get-Content C:\list_of_pcs.csv

$TargetOU = "OU=roomumber,OU=computers,OU=department,DC=companyname,DC=com"

ForEach($computer in $computers){

Get-ADComputer $computer | Move-ADObject -TargetPath $TargetOU

}