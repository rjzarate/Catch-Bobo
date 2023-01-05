function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
#scoreboard players operation @s quirkyAnimatronicsFlamingCorruptionCD = .cooldown stats
scoreboard players operation @s quirkyAnimatronicsFlamingCorruptionCD += .duration stats
scoreboard players operation @s quirkyAnimatronicsFlamingCorruptionDuration = .duration stats

scoreboard players operation .search uuidLink = @s uuid
execute as @e[type=minecraft:zombie,tag=animatronic,predicate=general:uuid_link_search,sort=random] run function orangutan:purple_guy/flaming_corruption/animatronic/activate