scoreboard players remove @s ransomwareRange 1
scoreboard players operation #horseRange temp = @s ransomwareRange
scoreboard players operation #horseRange temp %= #8 constant

execute if score #horseRange temp matches 0 positioned ~ ~-0.5 ~ as @e[type=#general:everything,tag=!spectator,distance=..2] unless score @s uuid = @e[type=minecraft:area_effect_cloud,tag=ransomware,limit=1,sort=nearest,tag=linked] uuidLink unless score @s uuidLink = @e[type=minecraft:area_effect_cloud,tag=ransomware,limit=1,sort=nearest,tag=linked] uuidLink run function hunter:hacker/trojan_horse/hit
execute if score #horseRange temp matches 0 run function hunter:hacker/ransomware/particles
execute if score #horseRange temp matches 0 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.5


tp ^ ^ ^0.5


execute if score @s ransomwareRange matches ..0 run kill @s