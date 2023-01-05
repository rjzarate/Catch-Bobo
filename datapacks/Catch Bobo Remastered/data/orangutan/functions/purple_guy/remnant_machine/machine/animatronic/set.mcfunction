scoreboard players operation @s uuidLink = .search uuidLink
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get .health animatronicStats
execute store result entity @s Health float 1 run scoreboard players get .health animatronicStats
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get .meleeDamage animatronicStats
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.0023 run scoreboard players get .movementSpeed animatronicStats