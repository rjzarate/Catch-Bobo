execute if score @s bladeStorm matches ..4 if score @s bladeStormCD matches ..0 if data entity @s SelectedItem.tag.bladeStorm run function cb:game/during/player/skills/hunters/jett/blade_storm/reset
execute if score @s bladeStorm matches ..4 if score @s bladeStormCD matches ..0 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bladeStorm:1}}]}] run function cb:game/during/player/skills/hunters/jett/blade_storm/reset
execute if score @s bladeStorm matches ..4 unless score @s bladeStormCD matches ..0 run scoreboard players remove @s bladeStormCD 1

execute if score @s dash matches ..0 if score @s dashCD matches ..0 run function cb:game/during/player/skills/hunters/jett/dash/reset
execute if score @s dash matches ..0 unless score @s dashCD matches ..0 run scoreboard players remove @s dashCD 1

execute if score @s marshal matches ..14 if score @s marshalCD matches ..0 run function cb:game/during/player/skills/hunters/jett/marshal/reset
execute if score @s marshal matches ..14 unless score @s marshalCD matches ..0 run scoreboard players remove @s marshalCD 1

execute if score @s updraft matches ..1 if score @s updraftCD matches ..0 run function cb:game/during/player/skills/hunters/jett/updraft/reset
execute if score @s updraft matches ..1 unless score @s updraftCD matches ..0 run scoreboard players remove @s updraftCD 1