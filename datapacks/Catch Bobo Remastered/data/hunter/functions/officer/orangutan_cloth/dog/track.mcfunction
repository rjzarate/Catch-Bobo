tp @e[type=minecraft:magma_cube,tag=tracking,predicate=general:uuid_link_search] ~ ~ ~

data modify entity @s AngryAt set from entity @e[type=minecraft:magma_cube,tag=tracking,predicate=general:uuid_link_search,limit=1] UUID


#kill @e[type=minecraft:slime,tag=tracking]