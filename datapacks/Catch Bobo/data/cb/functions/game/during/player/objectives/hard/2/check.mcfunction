tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"You hear a scream in the distance...","color":"gray","italic":true}]

execute if score O2 objectiveHList matches 1 run function cb:game/during/player/objectives/hard/2/finished
execute at @s run playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 300 1.25
effect give @s glowing 1 0

clear @s minecraft:carrot_on_a_stick{scream:1}