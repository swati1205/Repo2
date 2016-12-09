# Usage: JDK_Install.ps1 <PathToMSI> <INSTALLDIR=C:\Program Files\Java\jdk1.7.0_79> <LogFilePath>
$msiFile = "C:\Users\514359\Downloads\npp.7.2.Installer.x64.exe"
$InstallDir = "C:\Program Files (x86)\Notepadd++"

if (!(Test-Path $msiFile)){
    throw "Path to the MSI File $($msiFile) is invalid. Please supply a valid MSI file"
}

$arguments = @(
            "/S"            
            "/D=$INSTALLDIR" 
        )

Write-Host "Installing $msiFile....."
Write-Host $arguments
$process = Start-Process -verb RunAs -FilePath $msiFile -ArgumentList $arguments -PassThru -Wait
if ($process.ExitCode -eq 0){
    Write-Host "$msiFile has been successfully installed"
}
else {
    Write-Host "Installer exit code  $($process.ExitCode) for file  $($msifile)"
}
Exit $($process.ExitCode)
