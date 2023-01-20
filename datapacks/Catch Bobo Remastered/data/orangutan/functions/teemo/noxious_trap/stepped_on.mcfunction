execute as @e[tag=hunter,type=#general:hunters,tag=!spectator,distance=..3] run scoreboard players operation @s slowness2 = @s slowness2
execute as @e[tag=hunter,type=#general:hunters,tag=!spectator,distance=..3] run scoreboard players operation @s poison1 = @s poison1
execute as @e[tag=hunter,type=#general:hunters,tag=!spectator,distance=..3] run scoreboard players set @s[scores={slowness2=..99}] slowness2 100
execute as @e[tag=hunter,type=#general:hunters,tag=!spectator,distance=..3] run scoreboard players set @s[scores={poison1=..59}] poison1 60

execute at @s run playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1 2
execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal
kill @s

