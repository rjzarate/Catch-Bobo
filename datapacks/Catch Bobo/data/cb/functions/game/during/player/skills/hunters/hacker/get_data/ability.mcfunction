scoreboard players remove @s battery 31

execute as @a run scoreboard players operation @s health.5 = @s health
execute as @a run scoreboard players operation @s health.5 /= constant 2

execute at @s run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 2

execute at @s if entity @a[team=Bobo,tag=bobo,distance=26.01..,gamemode=!spectator] run tellraw @s ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"has ","bold":true},{"score":{"name":"@p[team=Bobo,tag=bobo]","objective":"health.5"},"bold":true,"color":"yellow"},{"text":" hearts ","bold":true,"color":"yellow"},{"text":"remaining.","bold":true}]

execute at @s run effect give @a[team=Bobo,tag=bobo,distance=..26,gamemode=!spectator] glowing 1 0
execute at @s if entity @a[team=Bobo,tag=bobo,distance=..26,gamemode=!spectator] run tellraw @a ["",{"text":"Affected ","bold":true},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"with ","bold":true},{"text":"glowing ","bold":true,"color":"yellow"},{"text":"for 1 second.","bold":true}]


execute unless entity @a[team=Bobo,tag=bobo] run tellraw @s ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"has...\nAyo where\'s ","bold":true},{"text":"Bobo","bold":true,"color":"gold"},{"text":"?","bold":true}]