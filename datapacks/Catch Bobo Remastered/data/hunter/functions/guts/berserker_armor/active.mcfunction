scoreboard players remove @s berserkerArmorDuration 1
execute if score @s berserkerArmorDuration matches ..0 run function hunter:guts/berserker_armor/deactivate
execute if score @s berserkerArmorDuration matches ..0 run scoreboard players reset @s berserkerArmorDuration