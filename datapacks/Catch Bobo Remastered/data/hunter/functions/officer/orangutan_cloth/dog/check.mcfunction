data modify entity @s AngerTimer set value 500
execute if entity @a[tag=orangutan,gamemode=!spectator,distance=..7] run tp @e[type=minecraft:magma_cube,tag=tracking,predicate=general:uuid_link_search] ~ -100 ~
execute if entity @a[tag=orangutan,gamemode=!spectator,distance=..7] run kill @e[type=minecraft:magma_cube,tag=tracking,predicate=general:uuid_link_search]
execute if entity @a[tag=orangutan,gamemode=!spectator,distance=..7] run data modify entity @s AngryAt set from entity @p[tag=orangutan,gamemode=!spectator] UUID
execute unless entity @a[tag=orangutan,gamemode=!spectator,distance=..7] facing entity @p[tag=orangutan,gamemode=!spectator] eyes positioned ^ ^1.5 ^4 run function hunter:officer/orangutan_cloth/dog/track