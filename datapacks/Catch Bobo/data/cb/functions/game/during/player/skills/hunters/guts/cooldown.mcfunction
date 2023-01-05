execute if score @s berserkerArmor matches ..0 if score @s berserkerArmorCD matches ..0 run function cb:game/during/player/skills/hunters/guts/berserker_armor/reset
execute if score @s berserkerArmor matches ..0 unless score @s berserkerArmorCD matches ..0 run scoreboard players remove @s berserkerArmorCD 1

execute if score @s cannonArm matches ..0 if score @s cannonArmCD matches ..0 run function cb:game/during/player/skills/hunters/guts/cannon_arm/reset
execute if score @s cannonArm matches ..0 unless score @s cannonArmCD matches ..0 run scoreboard players remove @s cannonArmCD 1

execute if score @s rCrossbow matches ..18 if score @s rCrossbowCD matches ..0 run function cb:game/during/player/skills/hunters/guts/repeater_crossbow/reset
execute if score @s rCrossbow matches ..18 unless score @s rCrossbowCD matches ..0 run scoreboard players remove @s rCrossbowCD 1

