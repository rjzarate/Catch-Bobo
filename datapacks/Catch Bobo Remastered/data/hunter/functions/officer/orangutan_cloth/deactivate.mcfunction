scoreboard players reset @s orangutanClothDuration

execute as @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] at @s run playsound minecraft:entity.wolf.whine hostile @a ~ ~ ~ 1 1

tp @e[type=minecraft:magma_cube,tag=tracking,predicate=general:uuid_link_search] ~ -100 ~
kill @e[type=minecraft:magma_cube,tag=tracking,predicate=general:uuid_link_search] 