#if there is a jotaro of the same uuidlink
scoreboard players operation .search uuid = @s uuidLink
scoreboard players reset #starPlatinum temp
execute as @a[tag=jotaro,gamemode=!spectator,predicate=general:uuid_search] run scoreboard players set #starPlatinum temp 1
execute as @a[tag=!jotaro,gamemode=!spectator,predicate=general:uuid_search] run scoreboard players set #starPlatinum temp 0
execute unless score #starPlatinum temp matches 1 run kill @s

#tp and rotation
execute as @a[tag=jotaro,gamemode=!spectator,predicate=general:uuid_search] at @s as @e[type=minecraft:husk,tag=starPlatinum] if score @s uuidLink = @p[tag=jotaro,gamemode=!spectator] uuid run tp @s ^ ^2.2 ^-1.5
execute as @a[tag=jotaro,gamemode=!spectator,predicate=general:uuid_search] run data modify entity @e[type=minecraft:husk,tag=starPlatinum,sort=nearest,limit=1] Rotation set from entity @s Rotation