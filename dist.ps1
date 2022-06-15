if ( !(Test-Path .\dist) ) {

    mkdir .\dist\

}

Compress-Archive .\src\* -DestinationPath .\dist\lost_world.mcaddon -Force