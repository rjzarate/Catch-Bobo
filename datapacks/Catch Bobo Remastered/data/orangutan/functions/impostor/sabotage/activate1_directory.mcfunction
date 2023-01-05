scoreboard players operation .search uuidLink = @s uuid

execute if entity @e[type=minecraft:ocelot,predicate=general:uuid_link_search,tag=sabotage,tag=o2] run function orangutan:impostor/sabotage/o2/activate1
execute if entity @e[type=minecraft:ocelot,predicate=general:uuid_link_search,tag=sabotage,tag=reactor] run function orangutan:impostor/sabotage/reactor/activate1
execute if entity @e[type=minecraft:ocelot,predicate=general:uuid_link_search,tag=sabotage,tag=lights] run function orangutan:impostor/sabotage/lights/activate1