scoreboard players operation @s luck50 = @s luck50
scoreboard players operation @s regeneration1 = @s regeneration1
scoreboard players operation @s speed1 = @s speed1
scoreboard players set @s[scores={luck50=..159}] luck50 160
scoreboard players set @s[scores={regeneration1=..79}] regeneration1 80
scoreboard players set @s[scores={speed1=..79}] speed1 80
execute at @s run playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.5 1
tag @s remove hasPepsiCan
clear @s minecraft:ender_eye{Tags:["pepsiCan"]} 1

advancement revoke @s only hunter:pepsi_man/pepsi_can