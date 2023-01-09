tag @s add tailwind

scoreboard players operation .search uuidLink = @s uuid
execute as @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search] at @s run function hunter:jett/tailwind/armor_stand
execute as @e[type=minecraft:armor_stand,tag=tailwind,tag=finished,predicate=general:uuid_link_search] at @s run tp @p[tag=jett,tag=tailwind,gamemode=!spectator] ~ ~ ~

scoreboard players remove @s tailwindDuration 1
execute if score @s tailwindDuration matches ..0 run function hunter:jett/tailwind/deactivate

tag @s remove tailwind