# Set constants
$diskNumber = 1
$driveLetter = 'E'
$label = 'Installer'

# Get the disk
$disk = Get-Disk -Number $diskNumber

# Ensure the disk is online
if ($disk.IsOffline) {
    Write-Output "Disk $diskNumber is offline, bringing online..."
    $disk | Set-Disk -IsOffline $false
}

# Ensure the disk is initialized and formatted
if ($disk.PartitionStyle -eq 'RAW') {
    Write-Output "Disk $diskNumber is not initialized, initializing..."
    $disk | 
    Initialize-Disk -PartitionStyle GPT -PassThru | 
    New-Partition -UseMaximumSize -DriveLetter $driveLetter | 
    Format-Volume -FileSystem FAT32 -NewFileSystemLabel $label
}
else {
    $formatDiskAnyway = Read-Host -Prompt "Do you want to format the disk anyway? (Y/N)"
    if ($formatDiskAnyway -eq 'Y') {
        Write-Output "Formatting disk $diskNumber..."
        $disk | Clear-Disk -RemoveData -Confirm:$false
        $disk | 
        Initialize-Disk -PartitionStyle GPT -PassThru | 
        New-Partition -UseMaximumSize -DriveLetter $driveLetter | 
        Format-Volume -FileSystem FAT32 -NewFileSystemLabel $label
    }
}

Write-Output "Disk $diskNumber is ready"

# Set TLS 1.3
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13

# Define files to download
$files = @(
    @{Uri = 'https://drive.google.com/uc?export=download&id=1O3bf7YrvdrUOtYdevVjQK1fTKHcYCn8h&confirm=t'; OutFile = "${driveLetter}:\License.txt" },
    @{Uri = 'https://drive.google.com/uc?export=download&id=13DNONjBzl2KCJJidgQbql_549gSOvYcb&confirm=t'; OutFile = "${driveLetter}:\CreatePartitions-UEFI.txt" },
    @{Uri = 'https://drive.google.com/uc?export=download&id=10HJkwXOvm_mp_Ww08_WZ09D1qqXTBQkI&confirm=t'; OutFile = "${driveLetter}:\uupdump-x64.zip" },
    @{Uri = 'https://drive.google.com/uc?export=download&id=10JRa1RT9pSGnvt8SJzwiuJhcj-c5HuuS&confirm=t'; OutFile = "${driveLetter}:\VMware-tools-12.3.0-22234872-x86_64.exe" },
    @{Uri = 'https://drive.google.com/uc?export=download&id=1PvcnXa35rVkxPJ_gCsux6ZTgYs43ZzOe&confirm=t'; OutFile = "${driveLetter}:\Windows_InsiderPreview_Server_vNext_en-us_25951e.iso" }
)

# Install ThreadJob module if needed
if (!(Get-Module -Name ThreadJob -ListAvailable)) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    Install-Module -Name ThreadJob -Force
}

# Disable progress bar
$ProgressPreference = 'SilentlyContinue'

# Download files in parallel
$jobs = foreach ($file in $files) {
    Start-ThreadJob -Name $file.OutFile -ScriptBlock {
        $params = $using:file
        Invoke-WebRequest @params
    }
}

# Wait for all downloads to complete
Wait-Job -Job $jobs

# Receive output from all jobs
foreach ($job in $jobs) {
    Receive-Job -Job $job
}

# Mount ISO
$isoPath = "${driveLetter}:\Windows_InsiderPreview_Server_vNext_en-us_25951e.iso"
$mount = Mount-DiskImage -ImagePath $isoPath -PassThru

# Copy all files from ISO to disk
Copy-Item -Path (($mount | Get-Volume).DriveLetter + ':\*') -Destination ($driveLetter + ':\') -Recurse -Force

# Dismount ISO
Dismount-DiskImage -ImagePath $isoPath

# Remove ISO file
Remove-Item -Path $isoPath

## PERFORM AFTER RESET
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "HideFileExt" -Value 0 # Show file extensions
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "HideDrivesWithNoMedia" -Value 0 # Show empty drives
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "Hidden" -Value 1 # Show hidden files
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ -Name "LaunchTo" -Value 1 # Open File Explorer to This PC

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ -Name "ShowRecent" -Value 0 # Remove recent files
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ -Name "ShowFrequemt" -Value 0 # Remove frequent folders