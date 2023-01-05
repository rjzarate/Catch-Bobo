scoreboard players remove @s quirkyAnimatronicsFlamingCorruptionDuration 1


scoreboard players operation .search uuidLink = @s uuid
execute as @e[type=minecraft:zombie,tag=animatronic,predicate=general:uuid_link_search,sort=random] run function orangutan:purple_guy/flaming_corruption/animatronic/active


execute if score @s quirkyAnimatronicsFlamingCorruptionDuration matches ..0 run function orangutan:purple_guy/flaming_corruption/deactivate
