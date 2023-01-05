scoreboard players operation .search uuidLink = @s uuid
execute if entity @e[type=minecraft:ocelot,tag=sabotage,predicate=general:uuid_link_search] run scoreboard players remove @s sabotageChargeUp 1
execute unless entity @e[type=minecraft:ocelot,tag=sabotage,predicate=general:uuid_link_search] run function orangutan:impostor/sabotage/deactivate
execute if score @s sabotageChargeUp matches ..0 run function orangutan:impostor/sabotage/activate1_directory