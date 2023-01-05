tag @s add tailwind

scoreboard players operation .search uuidLink = @s uuid
execute as @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search] at @s run function hunter:jett/tailwind/armor_stand
execute as @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search] at @s run tp @p[tag=jett,tag=tailwind,gamemode=!spectator] ~ ~ ~

scoreboard players remove @s tailwindDuration 1
execute if score @s tailwindDuration matches ..0 as @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search] run kill @s
execute if score @s tailwindDuration matches ..0 run scoreboard players reset @s tailwindDuration

tag @s remove tailwind