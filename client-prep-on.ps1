##Sets the LocalAccountTokenFilterPolicy registry key. Needed for Nessus
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$Name = "LocalAccountTokenFilterPolicy"
$value = "1"
New-ItemProperty -Path $registryPath -Name $name -Value $value `
    -PropertyType DWORD -Force | Out-Null
	
Write-Host "'LocalAccountTokenFilterPolicy' key added"
	
##Turns on WMI service
$service = "Winmgmt" 
$computer = gc env:computername
$result = (gwmi win32_service -computername $computer -filter "name='$service'").startservice()
Write-Host "WMI service enabled"

##Turns on Remote Registry Service
$service = "RemoteRegistry" 
$result = (gwmi win32_service -computername $computer -filter "name='$service'").ChangeStartMode("Manual")
$result = (gwmi win32_service -computername $computer -filter "name='$service'").startservice()
Write-Host "Remote Registry service enabled"
##Turns on File and Printer Sharing
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

Write-Host "You may be required to change the Windows local security policies or they could block access or inherent permissions. A common policy that will affect credentialed scans is found under:
Administrative Tools 
--> Local Security Policy 
	--> Security Settings 
		--> Local Policies 
			--> Security Options 
				--> Network access: Sharing and security model for local accounts.
				
If this local security policy is set to something other than “Classic - local users authenticate as themselves”, a compliance scan will not run successfully."


