$CURRENT = Get-Location
$MOJANG = "~\AppData\Local\Packages\Microsoft.MinecraftUWP_**\LocalState\games\com.mojang"

Set-Location $MOJANG
$MOJANG = Get-Location
Set-Location $CURRENT

$PACK_NAME = "§l§2Lost World"
$DEV_BP = "$MOJANG\development_behavior_packs\$PACK_NAME\"
$DEV_RP = "$MOJANG\development_resource_packs\$PACK_NAME\"

$SRC = ".\src\"
$SRC_BP = "$SRC\BP\"
$SRC_RP = "$SRC\RP\"

Remove-Item $DEV_BP* -Recurse
Remove-Item $DEV_RP* -Recurse

Copy-Item $SRC_BP\* $DEV_BP -Recurse
Copy-Item $SRC_RP\* $DEV_RP -Recurse