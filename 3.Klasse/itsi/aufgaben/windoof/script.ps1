New-LocalUser -Name 'fus-admin' -NoPassword
New-LocalUser -Name 'fus-user' -NoPassword
Add-LocalGroupMember -Group "Administrators" -Member fus-admin

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
    New-LocalUser -Name $userName -NoPassword
    Add-LocalGroupMember -Group $groupName -Member $userName
    switch ($randomElement)
    {
        "Projektleiter"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Schreiben") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Mitarbeiterdaten_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Vertraege_Lesen") -Member $userName
            }
        }
        "Architekten"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Lesen") -Member $userName
            }
        }
        "Ingenieure"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_B_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Vorlagen_Lesen") -Member $userName
            }
        }
        "Verwaltung"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Mitarbeiterdaten_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Finanzen_Lesen") -Member $userName
            }
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Vertraege_Lesen") -Member $userName
            }
        }
        "Gaeste"
        {
            if ((Get-Random -Maximum 2) -eq 0)
            {
                Add-LocalGroupMember -Group ($secPrefix + "Projekte_A_Lesen") -Member $userName
            }
        }
    }
    $idx++
}

#dir perms
$secPrefix = "SG_BIM"

#Projekt_A
Set-DirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_A\" -GroupName "$secPrefix-Projekte_A_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_A\" -GroupName "$secPrefix-Projekte_A_Schreiben" -Permissions Modify -Recursive
#Projekt_B
Set-DirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_B\" -GroupName "$secPrefix-Projekte_B_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Projekte\Projekt_B\" -GroupName "$secPrefix-Projekte_B_Schreiben" -Permissions Modify -Recursive
#Mitarbeiterdaten
Set-DirectoryPermissions -DirectoryPath "$root\Mitarbeiterdaten\" -GroupName "$secPrefix-Mitarbeiterdaten_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Mitarbeiterdaten\" -GroupName "$secPrefix-Mitarbeiterdaten_Schreiben" -Permissions Modify -Recursive
#\Geschaeftsdaten\Finanzen
Set-DirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Finanzen" -GroupName "$secPrefix-Finanzen_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Finanzen" -GroupName "$secPrefix-Finanzen_Schreiben" -Permissions Modify -Recursive
#\Geschaeftsdaten\Vertraege
Set-DirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Vertraege" -GroupName "$secPrefix-Vertraege_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Vertraege" -GroupName "$secPrefix-Vertraege_Schreiben" -Permissions Modify -Recursive
#Marketing
Set-DirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Marketing" -GroupName "$secPrefix-Marketing_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Geschaeftsdaten\Marketing" -GroupName "$secPrefix-Marketing_Schreiben" -Permissions Modify -Recursive
#Vorlagen
Set-DirectoryPermissions -DirectoryPath "$root\Vorlagen\" -GroupName "$secPrefix-Vorlagen_Lesen" -Permissions ReadAndExecute -Recursive
Set-DirectoryPermissions -DirectoryPath "$root\Vorlagen\" -GroupName "$secPrefix-Vorlagen_Schreiben" -Permissions Modify -Recursive

function Set-DirectoryPermissions
{
    param (
        [string]$DirectoryPath,
        [string]$GroupName,
        [System.Security.AccessControl.FileSystemRights]$Permissions = "ReadAndExecute",
        [switch]$Recursive
    )

    try
    {
        $acl = Get-Acl $DirectoryPath
        $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($GroupName, $Permissions, "ContainerInherit, ObjectInherit", "None", "Allow")
        $acl.AddAccessRule($accessRule)
        Set-Acl $DirectoryPath $acl

        if ($Recursive)
        {
            Get-ChildItem -Path $DirectoryPath -Recurse -Directory | ForEach-Object {
                try
                {
                    $subDirAcl = Get-Acl $_.FullName
                    $subDirAcl.AddAccessRule($accessRule)
                    Set-Acl $_.FullName $subDirAcl
                } catch
                {
                    Write-Warning "Failed to set ACL for directory: $($_.FullName) - $($_.Exception.Message)"
                }
            }
            Get-ChildItem -Path $DirectoryPath -Recurse -File | ForEach-Object {
                try
                {
                    $fileAcl = Get-Acl $_.FullName
                    $fileAcl.AddAccessRule($accessRule)
                    Set-Acl $_.FullName $fileAcl
                } catch
                {
                    Write-Warning "Failed to set ACL for file: $($_.FullName) - $($_.Exception.Message)"
                }
            }
        }

        Write-Verbose "Permissions set successfully for '$DirectoryPath' and its contents (if Recursive)."
    } catch
    {
        Write-Error "Failed to set permissions for '$DirectoryPath': $($_.Exception.Message)"
    }
}

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
    "$root\Geschaeftsdaten\Sonstiges",
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
    "Sonstiges" = @(".txt",".pdf",".docx")
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
$supersurepassword = ConvertTo-SecureString "hJ3rFU#67C0huq&G3*cm&B%zVHVNz#bPfL%sM7RX&miWM6Gyvv716!y7rQDl7@KCxRDXh" -AsPlainText -Force
Enable-BitLocker -MountPoint "B:" -EncryptionMethod Aes128 -PasswordProtector -Password $supersurepassword
