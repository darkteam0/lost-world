if ( $IsWindows ) {
    
    function DevPaths {

        param ( $Type )
            
            if ( !(Test-Path $Type) ) {
            
                New-Item $Type -ItemType "directory"
            
            } else {
            
                Remove-Item $Type\* -Recurse
            
            }

    }

    $CURRENT = Get-Location
    $MOJANG = "~\AppData\Local\Packages\Microsoft.MinecraftUWP_**\LocalState\games\com.mojang"

    Set-Location $MOJANG
    $MOJANG = Get-Location
    Set-Location $CURRENT

    $PACK_NAME = Get-Content .\artifact.txt -First 1

    $DEV_BP = "$MOJANG\development_behavior_packs\$PACK_NAME"
    $DEV_RP = "$MOJANG\development_resource_packs\$PACK_NAME"
    
    $SRC = ".\src"
    $SRC_BP = "$SRC\BP"
    $SRC_RP = "$SRC\RP"
    
    DevPaths $DEV_BP
    DevPaths $DEV_RP

    Copy-Item $SRC_BP\* $DEV_BP -Recurse
    Copy-Item $SRC_RP\* $DEV_RP -Recurse

    Write-Output "Files copied successfully"

} elseif ( $IsMacOS -or $IsLinux ) {

    Write-Output "Minecraft Bedrock Edition does not have versions for Unix systems like Linux distros and Mac OS yet"

}
