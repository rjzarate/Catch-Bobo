scoreboard players remove @s ransomwareRange 1
scoreboard players operation #ransomwareRange temp = @s ransomwareRange
scoreboard players operation #ransomwareRange temp %= #8 constant

execute if score #ransomwareRange temp matches 0 run scoreboard players operation .search uuid = @s uuidLink
execute if score #ransomwareRange temp matches 0 positioned ~ ~-0.5 ~ as @a[gamemode=!spectator,distance=..2,predicate=!general:uuid_search] run function hunter:hacker/ransomware/hit

execute if score #ransomwareRange temp matches 0 run function hunter:hacker/ransomware/particles
execute if score #ransomwareRange temp matches 0 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.5


tp ^ ^ ^0.5


execute if score @s ransomwareRange matches ..0 run kill @s