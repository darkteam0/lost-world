if ( $IsWindows ) {

    $CURRENT = Get-Location
    $MOJANG = "~\AppData\Local\Packages\Microsoft.MinecraftUWP_**\LocalState\games\com.mojang"

    Set-Location $MOJANG
    $MOJANG = Get-Location
    Set-Location $CURRENT

    $PACK_NAME = "§l§2Lost World"

    $DEV_BP = "$MOJANG\development_behavior_packs\$PACK_NAME §6BP\"
    $DEV_RP = "$MOJANG\development_resource_packs\$PACK_NAME §6RP\"
    
    $SRC = ".\src\"
    $SRC_BP = "$SRC\BP\"
    $SRC_RP = "$SRC\RP\"
    
    if ( !(Test-Path $DEV_BP || Test-Path $DEV_RP) ) {

        mkdir $DEV_BP
        mkdir $DEV_RP

    } else {

        Remove-Item $DEV_RP* -Recurse
        Remove-Item $DEV_BP* -Recurse

    }

    Copy-Item $SRC_BP\* $DEV_BP -Recurse
    Copy-Item $SRC_RP\* $DEV_RP -Recurse

    Write-Output "Files copied successfully"

} elseif ( $IsMacOS || $IsLinux ) {

    Write-Output "Minecraft Bedrock Edition does not have versions for Unix systems like Linux distros and Mac OS yet"

}