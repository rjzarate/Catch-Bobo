function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s ventCD = .cooldown stats

scoreboard players operation .search uuid = .search uuidLink

execute as @p[predicate=general:uuid_search] rotated as @s run tp @s ~ ~ ~ ~ ~


execute at @s run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1.5 0
execute at @s run particle dust 0.471 0.471 0.471 1 ~ ~1 ~ 0.5 0.5 0.5 1 20 force

playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1.5 0
particle dust 0.471 0.471 0.471 1 ~ ~1 ~ 0.5 0.5 0.5 1 20 force