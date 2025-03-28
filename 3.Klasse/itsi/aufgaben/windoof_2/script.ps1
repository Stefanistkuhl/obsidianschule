$supersurepassword = ConvertTo-SecureString "rafi123_" -AsPlainText
$supersurepassword2 = ConvertTo-SecureString "password" -AsPlainText
New-LocalUser -Name 'fus-admin' -Password $supersurepassword
New-LocalUser -Name 'fus-user' -Password $supersurepassword
Add-LocalGroupMember -Group "Administrators" -Member fus-admin
Add-LocalGroupMember -Group "Remote Desktop Users" -Member fus-user

$root = "C:\test"

if (-not (Test-Path -Path $root))
{
	New-Item -ItemType Directory -Path $root | Out-Null
	Write-Host "'$root' created"
} else
{
	Write-Host "root '$root' already exists"
}

$subdirs = @(
	"$root\test1\iajiasjfiasjf",
	"$root\test2\asifjaisfj",
	"$root\test3\wfsifjsaifj"
)

foreach ($dir in $subdirs)
{
	if (-not (Test-Path -Path $dir))
	{
		New-Item -ItemType Directory -Path $dir -Force | Out-Null
		Write-Host "'$dir' created"
	} else
	{
		Write-Host "'$dir' already exists"
	}
}

Write-Host "Directories have been created"

$secPrefix = "SG_"

$secGroupNames = (
	"some_group1",
	"some_group2",
	"some_group3"
)

foreach ($secgrpname in $secGroupNames)
{
	$name = $secPrefix + $secgrpname
	New-LocalGroup -Name $name
	# Add the security group to the Remote Desktop Users group
	Add-LocalGroupMember -Group "Remote Desktop Users" -Member $name
}

# Directory permissions section using icacls - ADJUSTED to use the created directories
# Removed $secPrefix from icacls commands
$secPrefix = "SG_" # This line is still here for group creation

# First, set ownership of the created directories to Administrators
icacls "$root\test1\iajiasjfiasjf" /setowner "Administrators"
icacls "$root\test2\asifjaisfj" /setowner "Administrators"
icacls "$root\test3\wfsifjsaifj" /setowner "Administrators"

# Reset permissions on the created directories
icacls "$root\test1\iajiasjfiasjf" /reset
icacls "$root\test2\asifjaisfj" /reset
icacls "$root\test3\wfsifjsaifj" /reset

# Remove inheritance and apply base permissions
icacls "$root\test1\iajiasjfiasjf" /inheritance:d
icacls "$root\test2\asifjaisfj" /inheritance:d
icacls "$root\test3\wfsifjsaifj" /inheritance:d

icacls "$root\test1\iajiasjfiasjf" /remove:g "Users"
icacls "$root\test1\iajiasjfiasjf" /remove:g "Authenticated Users"
icacls "$root\test2\asifjaisfj" /remove:g "Users"
icacls "$root\test2\asifjaisfj" /remove:g "Authenticated Users"
icacls "$root\test3\wfsifjsaifj" /remove:g "Users"
icacls "$root\test3\wfsifjsaifj" /remove:g "Authenticated Users"

# Grant Administrators full control to the created directories
icacls "$root\test1\iajiasjfiasjf" /grant:r "Administrators:(OI)(CI)F"
icacls "$root\test2\asifjaisfj" /grant:r "Administrators:(OI)(CI)F"
icacls "$root\test3\wfsifjsaifj" /grant:r "Administrators:(OI)(CI)F"

# Example mapping of SG_ groups to the created directories (adjust as needed)
icacls "$root\test1\iajiasjfiasjf" /grant:r "$secGroupNames[0]:(OI)(CI)RX"
icacls "$root\test2\asifjaisfj" /grant:r "$secGroupNames[1]:(OI)(CI)RW"
icacls "$root\test3\wfsifjsaifj" /grant:r "$secGroupNames[2]:(OI)(CI)RX"

#files - Adjust file creation paths to the existing directories
$fileTypeMap = @{
	"iajiasjfiasjf" = "txt"
	"asifjaisfj" = "txt"
	"wfsifjsaifj" = "txt"
}

$subdirsForFiles = @(
	"$root\test1\iajiasjfiasjf",
	"$root\test2\asifjaisfj",
	"$root\test3\wfsifjsaifj"
)

foreach ($dir in $subdirsForFiles)
{
	$currentDirName = Split-Path -Path $dir -Leaf
	if ($fileTypeMap.ContainsKey($currentDirName))
	{
		if (-not (Test-Path -Path $dir))
		{
			New-Item -ItemType Directory -Path $dir -Force | Out-Null
		}
		$randomString = [System.Guid]::NewGuid().ToString()
		$filePath = Join-Path -Path $dir -ChildPath "$randomString.txt"
		$randomString | Out-File -FilePath $filePath -Encoding UTF8
		Write-Host "Datei '$filePath' erstellt mit Inhalt: '$randomString'"
	}
}

#shares
$share1 = @{
	Name = "i"
	Path = "$root\test1\iajiasjfiasjf"
	FullAccess = "Administrators","Authenticated Users"
}
$share2 = @{
	Name = "hate"
	Path = "$root\test2\asifjaisfj"
	FullAccess = "Administrators","Authenticated Users"
}
$share3 = @{
	Name = "windows"
	Path = "$root\test3\wfsifjsaifj"
	FullAccess = "Administrators","Authenticated Users"
}
New-SmbShare @share1
New-SmbShare @share2
New-SmbShare @share3

#remove added task
Unregister-ScheduledTask -TaskName "after-setup" -Confirm:$false
