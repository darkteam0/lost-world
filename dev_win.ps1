$CURRENT = pwd
$MOJANG = "~\AppData\Local\Packages\Microsoft.MinecraftUWP_**\LocalState\games\com.mojang"

cd $MOJANG
$MOJANG = pwd
cd $CURRENT

$PACK_NAME = "§l§2Lost World"
$DEV_BP = "$MOJANG\development_behavior_packs\$PACK_NAME\"
$DEV_RP = "$MOJANG\development_resource_packs\$PACK_NAME\"

$SRC = ".\src\"
$SRC_BP = "$SRC\BP\"
$SRC_RP = "$SRC\RP\"

ri $DEV_BP* -Recurse
ri $DEV_RP* -Recurse

cp $SRC_BP\* $DEV_BP -Recurse
cp $SRC_RP\* $DEV_RP -Recurse