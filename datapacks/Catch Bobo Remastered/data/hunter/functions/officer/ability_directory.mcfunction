scoreboard players operation .search uuidLink = @s uuid

execute if predicate hunter:officer/swapstick unless score @s swapstickCD matches 1.. if entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] at @s run function hunter:officer/swapstick/activate

execute if predicate hunter:officer/clicker unless score @s clickerCD matches 1.. if entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run function hunter:officer/clicker/activate

execute if predicate hunter:officer/orangutan_cloth unless score @s orangutanClothCD matches 1.. if entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run function hunter:officer/orangutan_cloth/activate

execute if predicate hunter:officer/dog_whistle unless score @s dogWhistleCD matches 1.. if entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] at @s run function hunter:officer/dog_whistle/activate

execute if predicate hunter:officer/canine_embryo unless score @s canineEmbryoCD matches 1.. unless entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] at @s run function hunter:officer/canine_embryo/activate