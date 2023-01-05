scoreboard players reset .regeneration effectClear
scoreboard players operation .regeneration effectClear += @s regeneration1
scoreboard players operation .regeneration effectClear += @s regeneration2
scoreboard players operation .regeneration effectClear += @s regeneration3
scoreboard players operation .regeneration effectClear += @s regeneration4
execute if score .regeneration effectClear matches ..0 run effect clear @s minecraft:regeneration
scoreboard players reset .resistance effectClear
scoreboard players operation .resistance effectClear += @s resistance1
scoreboard players operation .resistance effectClear += @s resistance2
scoreboard players operation .resistance effectClear += @s resistance3
scoreboard players operation .resistance effectClear += @s resistance4
scoreboard players operation .resistance effectClear += @s resistance5
execute if score .resistance effectClear matches ..0 run effect clear @s minecraft:resistance
execute if score @s fireResistance matches ..0 run effect clear @s minecraft:fire_resistance

scoreboard players operation @s strength1 = @s strength1
scoreboard players operation @s regeneration2 = @s regeneration2
scoreboard players operation @s absorption = @s absorption
scoreboard players operation @s speed2 = @s speed2
scoreboard players operation @s resistance1 = @s resistance1
scoreboard players operation @s fireResistance = @s fireResistance
scoreboard players add @s[scores={strength1=..599}] strength1 600
scoreboard players add @s[scores={regeneration2=..599}] regeneration2 600
scoreboard players add @s[scores={absorption=..2399}] absorption 2400
function general:apply/effect/give_absorption/4
scoreboard players add @s[scores={speed2=..599}] speed2 600
scoreboard players add @s[scores={resistance1=..2399}] resistance1 2400
scoreboard players add @s[scores={fireResistance=..1199}] fireResistance 1200

scoreboard players reset @s notchApple