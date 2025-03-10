$supersurepassword = ConvertTo-SecureString "rafi123_" -AsPlainText -Force
New-LocalUser -Name 'fus-admin' -Password $supersurepassword
New-LocalUser -Name 'fus-user' -Password $supersurepassword
Add-LocalGroupMember -Group "Administrators" -Member fus-admin
Add-LocalGroupMember -Group "Remote Desktop Users" -Member fus-user

Resize-Partition -DiskNumber 0 -PartitionNumber 2 -Size (40GB)
New-Partition -DiskNumber 0 -UseMaximumSize -DriveLetter B
Format-Volume -DriveLetter B -FileSystem NTFS -AllocationUnitSize 8192

$root = "B:\BuildSmart_BIM"

if (-not (Test-Path -Path $root))
{
    New-Item -ItemType Directory -Path $root | Out-Null
    Write-Host "'$root' created"
} else
{
    Write-Host "root '$root' already exists"
}

$subdirs = @(
    "$root\Projekte\Projekt_A\CAD_Dateien",
    "$root\Projekte\Projekt_A\IFC_Dateien",
    "$root\Projekte\Projekt_A\Materiallisten",
    "$root\Projekte\Projekt_A\Zeitplaene",
    "$root\Projekte\Projekt_A\Kostenkalkulation",
    "$root\Projekte\Projekt_B\CAD_Dateien",
    "$root\Projekte\Projekt_B\IFC_Dateien",
    "$root\Projekte\Projekt_B\Materiallisten",
    "$root\Projekte\Projekt_B\Zeitplaene",
    "$root\Projekte\Projekt_B\Kostenkalkulation",
    "$root\Mitarbeiterdaten\Personalakten",
    "$root\Mitarbeiterdaten\Projektzuordnungen",
    "$root\Mitarbeiterdaten\Schulungsunterlagen",
    "$root\Geschaeftsdaten\Finanzen",
    "$root\Geschaeftsdaten\Vertraege",
    "$root\Geschaeftsdaten\Marketing",
    "$root\Vorlagen\CAD_Vorlagen",
    "$root\Vorlagen\IFC_Vorlagen",
    "$root\Vorlagen\Berichtsvorlagen"
)

foreach ($dir in $subdirs)
{
    if (-not (Test-Path -Path $dir))
    {
        New-Item -ItemType Directory -Path $dir | Out-Null
        Write-Host "'$dir' created"
    } else
    {
        Write-Host "'$dir' already exists"
    }
}

Write-Host "Directories have been created"

#groups
#BIM-<id>-<Nachname>
$url = "https://raw.githubusercontent.com/Stefanistkuhl/obsidianschule/refs/heads/main/3.Klasse/itsi/aufgaben/windoof/sirnames.txt"
$dest = "C:\Users\Administrator\sirnames.txt"
Invoke-WebRequest -Uri $url -OutFile $dest
$names = Get-Content -Path @($dest)
$prefix = "BIM-"
$secPrefix = "SG_BIM-"

$groupnames = (
    "Projektleiter",
    "Architekten",
    "Ingenieure",
    "Verwaltung",
    "Gaeste"
)

$secGroupNames = (
    "Projekte_A_Lesen",
    "Projekte_A_Schreiben",
    "Projekte_B_Lesen",
    "Projekte_B_Schreiben",
    "Mitarbeiterdaten_Lesen",
    "Mitarbeiterdaten_Schreiben",
    "Finanzen_Lesen",
    "Finanzen_Schreiben",
    "Vertraege_Lesen",
    "Vertraege_Schreiben",
    "Marketing_Lesen",
    "Marketing_Schreiben",
    "Vorlagen_Lesen",
    "Vorlagen_Schreiben"
)

foreach ($grpname in $groupnames)
{
    $name = $prefix + $grpname
    New-LocalGroup -Name $name
}

foreach ($secgrpname in $secGroupNames)
{
    $name = $secPrefix + $secgrpname
    New-LocalGroup -Name $name
}

$idMap = @{
    "Projektleiter" = "01"
    "Architekten"   = "02"
    "Ingenieure"    = "03"
    "Verwaltung"    = "04"
    "Gaeste"        = "05"
}
$idx = 0
$fullID = ""
foreach($name in $names)
{
    $username = ""
    $randomElement = $groupnames | Get-Random
    $groupName = $prefix + $randomElement
    $id_department = $idMap[$randomElement]
    $id_idx = "{0:0000}" -f $idx
    $fullID = $id_department + $id_idx
    $userName = $prefix + $fullID + "-" + $name
    if ($userName.Length -gt 20)
    {
        $userName = $userName.Substring(0, 20)
    }
    Write-Host $userName
    New-LocalUser -Name $userName -Password $supersurepassword
    Add-LocalGroupMember -Group $groupName -Member $userName
    Add-LocalGroupMember -Group "Remote Desktop Users" -Member $username
    switch ($randomElement)
    {
        "Projektleiter"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Marketing_Lesen") -Member $userName
                if ((Get-Random -Maximum 2) -eq 0)
                {
                    Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Lesen") -Member $userName
                    Add-LocalGroupMember -Group ($secPrefix + "Mitarbeiterdaten_Lesen") -Member $userName
                    Add-LocalGroupMember -Group ($secPrefix + "Vertraege_Lesen") -Member $userName
                }
            } else
            {
                Add-LocalGroupMember -Group ($secPrefix + "Marketing_Schreiben") -Member $userName
                if ((Get-Random -Maximum 2) -eq 0)
                {
                    Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
                    Add-LocalGroupMember -Group ($secPrefix + "Mitarbeiterdaten_Lesen") -Member $userName
                    Add-LocalGroupMember -Group ($secPrefix + "Vertraege_Lesen") -Member $userName
                }
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Schreiben") -Member $userName
            }
        }
        "Architekten"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Schreiben") -Member $userName
                if ((Get-Random -Maximum 2) -eq 0)
                {
                    Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Lesen") -Member $userName
                }
            } else
            {
                if ((Get-Random -Maximum 2) -eq 0)
                {
                    Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
                }
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Schreiben") -Member $userName
            }
        }
        "Ingenieure"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Schreiben") -Member $userName
                if ((Get-Random -Maximum 2) -eq 0)
                {
                    Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Lesen") -Member $userName
                }
            } else
            {
                if ((Get-Random -Maximum 2) -eq 0)
                {
                    Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
                }
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Schreiben") -Member $userName
            }
        }
        "Verwaltung"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Mitarbeiterdaten_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Finanzen_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vertraege_Schreiben") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Lesen") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Marketing_Schreiben") -Member $userName
            } else
            {
                Add-LocalGroupMember -Group ($secPrefix + "Marketing_Lesen") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Mitarbeiterdaten_Lesen") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Finanzen_Lesen") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vertraege_Lesen") -Member $userName
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Lesen") -Member $userName
            }
        }
        "Gaeste"
        {
            Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
            Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Lesen") -Member $userName
            Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Lesen") -Member $userName
        }
    }
    $idx++
}

function Set-SecureDirectoryPermissions
{
    param (
        [string]$DirectoryPath,
        [string]$GroupName,
        [System.Security.AccessControl.FileSystemRights]$Permissions,
        [switch]$Recursive,
        [switch]$ReadOnly
    )
    try
    {
        # Get current ACL
        $acl = Get-Acl $DirectoryPath
        
        # If ReadOnly, we need to handle this specifically
        if ($ReadOnly)
        {
            # First, add the basic read permissions
            $allowRule = New-Object System.Security.AccessControl.FileSystemAccessRule(
                $GroupName, 
                [System.Security.AccessControl.FileSystemRights]::ReadAndExecute, 
                "ContainerInherit, ObjectInherit", 
                "None", 
                "Allow"
            )
            $acl.AddAccessRule($allowRule)
            
            # Now explicitly deny all write/create operations - these take precedence over any ownership permissions
            $denyPermissions = [System.Security.AccessControl.FileSystemRights]::CreateDirectories -bor 
            [System.Security.AccessControl.FileSystemRights]::CreateFiles -bor
            [System.Security.AccessControl.FileSystemRights]::Write -bor
            [System.Security.AccessControl.FileSystemRights]::WriteData -bor
            [System.Security.AccessControl.FileSystemRights]::AppendData -bor
            [System.Security.AccessControl.FileSystemRights]::WriteAttributes -bor
            [System.Security.AccessControl.FileSystemRights]::WriteExtendedAttributes
            
            $denyRule = New-Object System.Security.AccessControl.FileSystemAccessRule(
                $GroupName, 
                $denyPermissions, 
                "ContainerInherit, ObjectInherit", 
                "None", 
                "Deny"
            )
            $acl.AddAccessRule($denyRule)
        } else
        {
            # For non-read-only permissions, just add the requested permissions
            $allowRule = New-Object System.Security.AccessControl.FileSystemAccessRule(
                $GroupName, 
                $Permissions, 
                "ContainerInherit, ObjectInherit", 
                "None", 
                "Allow"
            )
            $acl.AddAccessRule($allowRule)
        }
        
        # Apply the ACL to the directory
        Set-Acl -Path $DirectoryPath -AclObject $acl
        Write-Verbose "Permissions set for directory: $DirectoryPath"
        
        # If recursive, apply to all subdirectories and files
        if ($Recursive)
        {
            # Process all subdirectories
            Get-ChildItem -Path $DirectoryPath -Directory -Recurse | ForEach-Object {
                try
                {
                    $childAcl = Get-Acl -Path $_.FullName
                    
                    if ($ReadOnly)
                    {
                        $childAcl.AddAccessRule($allowRule)
                        $childAcl.AddAccessRule($denyRule)
                    } else
                    {
                        $childAcl.AddAccessRule($allowRule)
                    }
                    
                    Set-Acl -Path $_.FullName -AclObject $childAcl
                    Write-Verbose "Permissions set for subdirectory: $($_.FullName)"
                } catch
                {
                    Write-Warning "Failed to set permissions for directory $($_.FullName): $($_.Exception.Message)"
                }
            }
            
            # Process all files
            Get-ChildItem -Path $DirectoryPath -File -Recurse | ForEach-Object {
                try
                {
                    $childAcl = Get-Acl -Path $_.FullName
                    
                    if ($ReadOnly)
                    {
                        $childAcl.AddAccessRule($allowRule)
                        $childAcl.AddAccessRule($denyRule)
                    } else
                    {
                        $childAcl.AddAccessRule($allowRule)
                    }
                    
                    Set-Acl -Path $_.FullName -AclObject $childAcl
                    Write-Verbose "Permissions set for file: $($_.FullName)"
                } catch
                {
                    Write-Warning "Failed to set permissions for file $($_.FullName): $($_.Exception.Message)"
                }
            }
        }
        
        Write-Verbose "Permissions set successfully for '$DirectoryPath' and all its contents."
    } catch
    {
        Write-Error "Failed to set permissions for '$DirectoryPath': $($_.Exception.Message)"
    }
}

# Define read and modify permissions constants
$readPermissions = [System.Security.AccessControl.FileSystemRights]::ReadAndExecute
$modifyPermissions = [System.Security.AccessControl.FileSystemRights]::Modify

# Security group prefix
$secPrefix = "SG_BIM"

#Projekt_A
Set-SecureDirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_A\" -GroupName "$secPrefix-Projekte_A_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_A\" -GroupName "$secPrefix-Projekte_A_Schreiben" -Permissions $modifyPermissions -Recursive

#Projekt_B
Set-SecureDirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_B\" -GroupName "$secPrefix-Projekte_B_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_B\" -GroupName "$secPrefix-Projekte_B_Schreiben" -Permissions $modifyPermissions -Recursive

#Mitarbeiterdaten
Set-SecureDirectoryPermissions -DirectoryPath "$root\Mitarbeiterdaten\" -GroupName "$secPrefix-Mitarbeiterdaten_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Mitarbeiterdaten\" -GroupName "$secPrefix-Mitarbeiterdaten_Schreiben" -Permissions $modifyPermissions -Recursive

#\Geschaeftsdaten\Finanzen
Set-SecureDirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Finanzen" -GroupName "$secPrefix-Finanzen_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Finanzen" -GroupName "$secPrefix-Finanzen_Schreiben" -Permissions $modifyPermissions -Recursive

#\Geschaeftsdaten\Vertraege
Set-SecureDirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Vertraege" -GroupName "$secPrefix-Vertraege_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Vertraege" -GroupName "$secPrefix-Vertraege_Schreiben" -Permissions $modifyPermissions -Recursive

#Marketing
Set-SecureDirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Marketing" -GroupName "$secPrefix-Marketing_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Marketing" -GroupName "$secPrefix-Marketing_Schreiben" -Permissions $modifyPermissions -Recursive

#Vorlagen
Set-SecureDirectoryPermissions -DirectoryPath "$root\Vorlagen\" -GroupName "$secPrefix-Vorlagen_Lesen" -Permissions $readPermissions -Recursive -ReadOnly
Set-SecureDirectoryPermissions -DirectoryPath "$root\Vorlagen\" -GroupName "$secPrefix-Vorlagen_Schreiben" -Permissions $modifyPermissions -Recursive

#files
$subdirs = @(
    "$root\Projekte\Projekt_A\CAD_Dateien",
    "$root\Projekte\Projekt_A\IFC_Dateien",
    "$root\Projekte\Projekt_A\Materiallisten",
    "$root\Projekte\Projekt_A\Zeitplaene",
    "$root\Projekte\Projekt_A\Kostenkalkulation",
    "$root\Projekte\Projekt_B\CAD_Dateien",
    "$root\Projekte\Projekt_B\IFC_Dateien",
    "$root\Projekte\Projekt_B\Materiallisten",
    "$root\Projekte\Projekt_B\Zeitplaene",
    "$root\Projekte\Projekt_B\Kostenkalkulation",
    "$root\Mitarbeiterdaten\Personalakten",
    "$root\Mitarbeiterdaten\Projektzuordnungen",
    "$root\Mitarbeiterdaten\Schulungsunterlagen",
    "$root\Geschaeftsdaten\Finanzen",
    "$root\Geschaeftsdaten\Vertraege",
    "$root\Geschaeftsdaten\Marketing",
    "$root\Vorlagen\CAD_Vorlagen",
    "$root\Vorlagen\IFC_Vorlagen",
    "$root\Vorlagen\Berichtsvorlagen"
)

$fileTypeMap = @{
    "CAD_Dateien" = @(".dwg", ".CATPart", ".CATProduct", ".ptc", ".prt", ".asm", ".ipt", ".aim", ".sldprt", ".sldasm", ".igs", ".iges", ".stp", ".step", ".stl", ".qif")
    "IFC_Dateien" = @(".ifc", ".ifczip")
    "Materiallisten" = @(".xlsx", ".csv", ".ods", ".txt")
    "Zeitplaene" = @(".mpp", ".xlsx", ".pdf", ".ics")
    "Kostenkalkulation" = @(".xlsx", ".pdf", ".ods")
    "Personalakten" = @(".pdf", ".docx", ".odt", ".txt")
    "Projektzuordnungen" = @(".xlsx", ".csv", ".pdf", ".txt")
    "Schulungsunterlagen" = @(".pdf", ".pptx", ".docx", ".mp4", ".avi")
    "Finanzen" = @(".xlsx", ".pdf", ".csv", ".qbo")
    "Vertraege" = @(".pdf", ".docx", ".odt")
    "Marketing" = @(".pdf", ".pptx", ".jpg", ".png", ".ai", ".psd")
    "Berichtsvorlagen" = @(".docx", ".xlsx", ".pdf", ".dotx")
    "CAD_Vorlagen" = @(".dwg", ".CATPart", ".CATProduct", ".ptc", ".prt", ".asm", ".ipt", ".aim", ".sldprt", ".sldasm", ".igs", ".iges", ".stp", ".step", ".stl", ".qif")
    "IFC_Vorlagen" = @(".ifc", ".ifczip")
}

foreach ($dir in $subdirs)
{
    $currentDirName = Split-Path -Path $dir -Leaf
    if ($fileTypeMap.ContainsKey($currentDirName))
    {
        $randomString = [System.Guid]::NewGuid().ToString()
        $matchingFileTypes = $fileTypeMap[$currentDirName]
        $randomValue = Get-Random -InputObject $matchingFileTypes
        $filePath = Join-Path -Path $dir -ChildPath "$randomString$randomValue"
        $randomString | Out-File -FilePath $filePath -Encoding UTF8
        Write-Host "Datei '$filePath' erstellt mit Inhalt: '$randomString'"
    }
}

#shares
$Projekte = @{
    Name = "Projekte"
    Path = "$root\Projekte"
    FullAccess = "Administrators","Authenticated Users"
}
$Projekt_A = @{
    Name = "Projekt_A"
    Path = "$root\Projekte\Projekt_A"
    FullAccess = "Administrators","Authenticated Users"
}
$Projekt_B = @{
    Name = "Projekt_B"
    Path = "$root\Projekte\Projekt_B"
    FullAccess = "Administrators","Authenticated Users"
}
$Mitarbeiterdaten = @{
    Name = "Mitarbeiterdaten"
    Path = "$root\Mitarbeiterdaten"
    FullAccess = "Administrators","Authenticated Users"
}
$Geschaeftsdaten = @{
    Name = "Geschaeftsdaten"
    Path = "$root\Geschaeftsdaten"
    FullAccess = "Administrators","Authenticated Users"
}
$Vorlagen = @{
    Name = "Vorlagen"
    Path = "$root\Vorlagen"
    FullAccess = "Administrators","Authenticated Users"
}
New-SmbShare @Projekte
New-SmbShare @Projekt_A
New-SmbShare @Projekt_B
New-SmbShare @Mitarbeiterdaten
New-SmbShare @Geschaeftsdaten
New-SmbShare @Vorlagen

#bitlocker
Enable-BitLocker -MountPoint "B:" -EncryptionMethod Aes128 -PasswordProtector -Password $supersurepassword

#remove added task
Unregister-ScheduledTask -TaskName "after-setup" -Confirm:$false
