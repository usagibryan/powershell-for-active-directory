# PowerShell Scripts for Active Directory
These are handy time saving PowerShell scripts and commands I found for moving and exporting objects in Active Directory

## Exporting Email Addresses From a Group

Say your manager asks you to provide them with a list of all the members or email addresses of members in an email group.

[`export_addresses.ps1`](https://github.com/usagibryan/powershell_for_active_directory/blob/main/export_addresses.ps1) selects a group and exports the email address of each user in that group to a csv file. Replace `"Group Name"` with the name of the group you want to export members from and `C:\folder\exported_file.csv` with where you want the file to be exported to and how you want it to be named.

If you want to export different information, such as the names of the users in the group, you can replace `Select-Object Mail |` on line 3 with `Select-Object Givenname, SurName |`

## Moving Computers to an Organizational Unit

Say you have OUs that represent room numbers in a building, such as a computer lab. A bunch of computers have just been installed in this room and you need to push the same update or package to all of them using asset management software used to remotely inventory and manage desktop computers, and this software gets it's data from Active Directory. You then want to keep the locations of computers in Active Directory up to date as things move around.

The script [`move_computers.ps1`](https://github.com/usagibryan/powershell_for_active_directory/blob/main/move_computers.ps1) takes a list of objects in a .csv or .txt file, in this case a list of computer names, and moves those computers to an [Organizational Unit](https://en.wikipedia.org/wiki/Organizational_unit_(computing)) (OU). Just replace `C:\list_of_pcs.csv` with the file name and location of your list of computer names, and `"OU=roomumber,OU=computers,OU=department,DC=companyname,DC=com"` with the [distinguished name](https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ldap/distinguished-names) of the OU you want to move the computers to. To find the distinguished name of your target OU, right click on the OU and select "properties", click on the "Attribute Editor" tab and scroll downt o "distinguishedName"

This should work for moving any kind of object to any kind of OU. Moving computers was just the use case I needed this script for.

## Additional Information

See [PowerShell: Move Computer to OU](https://theitbros.com/powershell-move-computer-to-ou/) - TheITBros

See [PowerShell for Sysadmins](https://nostarch.com/powershellsysadmins) by Adam Bertram
