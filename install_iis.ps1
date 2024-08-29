# Install IIS
Install-WindowsFeature -Name Web-Server -IncludeManagementTools -Verbose

# Enable IIS
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\InetStp' -Name 'EnableDirBrowsing' -Value 0
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\InetStp\Configuration\MaxWebConfigFileSizeInKB' -Name 'MaxWebConfigFileSizeInKB' -Value 512

# Restart IIS
Restart-Service -Name W3SVC
