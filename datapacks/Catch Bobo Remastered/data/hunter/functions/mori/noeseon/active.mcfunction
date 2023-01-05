scoreboard players operation #noeseon temp = @s noeseonDuration
scoreboard players operation #noeseon temp %= #25 constant

execute if score #noeseon temp matches 20 run scoreboard players operation #uuid temp = @s uuid
execute if score #noeseon temp matches 20 as @e[type=minecraft:marker,tag=noeseon] if score @s uuidLink = #uuid temp run tag @s add lightning
execute if score #noeseon temp matches 20 if score @s noeseonDuration matches ..30 as @e[type=minecraft:marker,tag=noeseon] if score @s uuidLink = #uuid temp run tag @s add glowing

execute if score @s noeseonDuration matches 1.. run scoreboard players remove @s noeseonDuration 1
execute if score @s noeseonDuration matches ..0 at @s run function hunter:mori/noeseon/deactivate
execute if score @s noeseonDuration matches ..0 run scoreboard players reset @s noeseonDuration