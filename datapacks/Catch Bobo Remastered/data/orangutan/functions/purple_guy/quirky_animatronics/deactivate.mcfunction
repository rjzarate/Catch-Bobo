scoreboard players reset @s quirkyAnimatronicsFlamingCorruptionDuration

scoreboard players operation .search uuidLink = @s uuid
execute as @e[type=minecraft:zombie,tag=animatronic,predicate=general:uuid_link_search,sort=random] run function orangutan:purple_guy/quirky_animatronics/animatronic/deactivate