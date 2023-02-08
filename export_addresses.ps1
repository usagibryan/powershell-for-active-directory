Get-ADGroupMember -Identity "Group Name" -Recursive |
Get-ADUser -Properties Mail |
Select-Object Mail |
Export-CSV -Path C:\folder\exported_file.csv -NoTypeInformation
