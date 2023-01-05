scoreboard players remove @s sS 1
scoreboard players add @s objectiveAbility 1
execute if score O0 objectiveHList matches 1 run function cb:game/during/player/objectives/hard/0/finished


tag @s add sS2

tag @r[team=Hunters,gamemode=adventure] add sS1

execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["sS1","sS"]}
execute at @p[team=Hunters,gamemode=adventure,tag=sS1] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["sS2","sS"]}
execute as @p[team=Hunters,gamemode=adventure,tag=sS1] run effect give @s resistance 4 2
execute as @p[team=Hunters,gamemode=adventure,tag=sS1] run effect give @s fire_resistance 10 0
execute as @p[team=Hunters,gamemode=adventure,tag=sS1] run tellraw @s {"text":"You've been swapped!","bold":true,"color":"yellow"}

data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=sS1] Rotation set from entity @s Rotation 
data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=sS2] Rotation set from entity @p[team=Hunters,gamemode=adventure] Rotation




schedule function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/teleport 2t