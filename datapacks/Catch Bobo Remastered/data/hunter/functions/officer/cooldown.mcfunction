execute if score @s swapstickCD matches 1.. run scoreboard players remove @s swapstickCD 1

execute if score @s clickerCD matches 1.. run scoreboard players remove @s clickerCD 1

execute if score @s orangutanClothCD matches 1.. run scoreboard players remove @s orangutanClothCD 1

execute if score @s dogWhistleCD matches 1.. run scoreboard players remove @s dogWhistleCD 1

execute if score @s canineEmbryoCD matches 1.. run scoreboard players operation .search uuidLink = @s uuid
execute if score @s canineEmbryoCD matches 1.. unless entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run scoreboard players remove @s canineEmbryoCD 1