scoreboard players operation .search uuid = @s uuidLink
execute at @s as @a[tag=teemo,gamemode=!spectator,predicate=!general:uuid_search] positioned ~ ~-1 ~ if entity @s[distance=25..] run particle minecraft:block minecraft:oak_planks ~ ~1 ~ 0 0 0 1 3
execute at @s as @a[tag=teemo,gamemode=!spectator,predicate=!general:uuid_search] positioned ~ ~-1 ~ if entity @s[distance=25..] run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~1 ~ 0.75 1.5
execute at @s as @a[tag=teemo,gamemode=!spectator,predicate=!general:uuid_search] positioned ~ ~-1 ~ if entity @s[distance=25..] as @e[type=minecraft:arrow,limit=1,sort=nearest,tag=blindingDart] run kill @s

execute if predicate orangutan:in_ground at @s run particle minecraft:block minecraft:oak_planks ~ ~ ~ 0 0 0 1 3
execute if predicate orangutan:in_ground run kill @s