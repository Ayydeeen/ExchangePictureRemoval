From AD:

Get-aduser -Filter 'enabled -eq $true' | select Name | sort Name | Export-Csv -Path C:\Users.csv
 

From Local Exchange Server Management Console:

$Users = Get-Content "C:\Users\user\Desktop\Users.csv"

ForEach ($user in $Users) { Remove-UserPhoto $user -confirm:$false }
