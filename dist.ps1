$ARTIFACT = Get-Content .\artifact.txt -First 1

if ( !(Test-Path .\dist) ) {

    New-Item dist -ItemType "directory"

} else {

    Remove-Item .\dist\*

}

Compress-Archive .\src\* -DestinationPath ".\dist\$ARTIFACT.mcaddon" -Force
