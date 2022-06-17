if ( $IsWindows ) {

    $CURRENT = Get-Location
    $MOJANG = "~\AppData\Local\Packages\Microsoft.MinecraftUWP_**\LocalState\games\com.mojang"

    Set-Location $MOJANG
    $MOJANG = Get-Location
    Set-Location $CURRENT

    $PACK_NAME = "§l§2Lost World"

    $DEV_BP = "$MOJANG\development_behavior_packs\$PACK_NAME §6BP"
    $DEV_RP = "$MOJANG\development_resource_packs\$PACK_NAME §6RP"
    
    $SRC = ".\src"
    $SRC_BP = "$SRC\BP"
    $SRC_RP = "$SRC\RP"
    
    if ( Test-Path $DEV_BP ) {

        New-Item $DEV_BP -ItemType "directory"

    } else {

        Remove-Item $DEV_BP\* -Recurse

    }

    if ( Test-Path $DEV_RP ) {

	    New-Item $DEV_RP -ItemType "directory"

    } else {

	Remove-Item $DEV_RP\* -Recurse

    }

    Copy-Item $SRC_BP\* $DEV_BP -Recurse
    Copy-Item $SRC_RP\* $DEV_RP -Recurse

    Write-Output "Files copied successfully"

} elseif ( $IsMacOS -or $IsLinux ) {

    Write-Output "Minecraft Bedrock Edition does not have versions for Unix systems like Linux distros and Mac OS yet"

}
