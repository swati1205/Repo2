
$file_path = "c:\test"

$machine_name = Invoke-Command -ScriptBlock {hostname}

$date = (Get-Date -format "yyyy-MM-dd")

$msi =@('C:\Users\514359\Downloads\npp.7.2.Installer.x64.exe')

foreach ($msifile in $msi)

{

Start-Process -FilePath "C:\Users\514359\Downloads\npp.7.2.Installer.x64.exe" -ArgumentList "/i `"$msifile`" /qn /passive" -Wait

Start-Sleep 300

}﻿
