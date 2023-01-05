scoreboard players remove @s orangutanClothDuration 1

scoreboard players operation .search uuidLink = @s uuid
execute as @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] at @s run function hunter:officer/orangutan_cloth/dog/check


execute unless entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run function hunter:officer/orangutan_cloth/deactivate
execute if score @s orangutanClothDuration matches ..0 run function hunter:officer/orangutan_cloth/deactivate
