execute if score @s jetpackFuel matches ..2 if score @s jetpackFuelCD matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/jetpack_fuel/reset
execute if entity @s[nbt={OnGround:1b}] if score @s jetpackFuel matches ..2 unless score @s jetpackFuelCD matches ..0 run scoreboard players remove @s jetpackFuelCD 1

execute if score @s ee-3 matches ..59 if score @s ee-3CD matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/ee-3/reset
execute if score @s ee-3 matches ..59 unless score @s ee-3CD matches ..0 run scoreboard players remove @s ee-3CD 1

execute if score @s flamethrower matches ..149 if score @s flamethrowerCD matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/flamethrower/reset
execute if score @s flamethrower matches ..149 unless score @s flamethrowerCD matches ..0 run scoreboard players remove @s flamethrowerCD 1

execute if score @s cRocket matches ..0 if score @s cRocketCD matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/reset
execute if score @s cRocket matches ..0 unless score @s cRocketCD matches ..0 run scoreboard players remove @s cRocketCD 1

execute if score @s rBarrage matches ..0 if score @s rBarrageCD matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/reset
execute if score @s rBarrage matches ..0 unless score @s rBarrageCD matches ..0 run scoreboard players remove @s rBarrageCD 1