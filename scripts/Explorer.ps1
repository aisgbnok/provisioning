# Set Windows Explorer display options
New-Item -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Force | Out-Null
Set-ItemProperty -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "HideFileExt" -Value 0 # Show file extensions
Set-ItemProperty -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "HideDrivesWithNoMedia" -Value 0 # Show empty drives
Set-ItemProperty -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "Hidden" -Value 1 # Show hidden files
Set-ItemProperty -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "LaunchTo" -Value 1 # Open File Explorer to This PC

Set-ItemProperty -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\ -Name "ShowRecent" -Value 0 # Remove recent files
Set-ItemProperty -Path REGISTRY::HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\ -Name "ShowFrequemt" -Value 0 # Remove frequent folders