Get-ADGroupMember -Identity "Group Name" -Recursive |
Get-ADUser -Properties Mail |
Select-Object Mail |
Export-CSV -Path C:\Users\User\Desktop\file.csv -NoTypeInformation