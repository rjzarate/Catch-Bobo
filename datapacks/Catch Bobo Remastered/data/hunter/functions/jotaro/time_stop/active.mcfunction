execute if score number timeStopDuration matches 5 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1
execute if score number timeStopDuration matches 10 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 .8
execute if score number timeStopDuration matches 17 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 .6
execute if score number timeStopDuration matches 25 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0


execute if score number timeStopDuration matches 80 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0
execute if score number timeStopDuration matches 88 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 .6
execute if score number timeStopDuration matches 95 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 .8
execute if score number timeStopDuration matches 100 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1




execute if score number timeStopDuration matches 1.. run scoreboard players remove number timeStopDuration 1

execute if score number timeStopDuration matches ..0 run kill @e[type=minecraft:area_effect_cloud,tag=timeStop]
execute if score number timeStopDuration matches ..0 run tag @e[type=#general:everything/all,tag=timeStoppee] remove timeStoppee
execute if score number timeStopDuration matches ..0 as @a[tag=timeStopper] run attribute @s minecraft:generic.attack_damage modifier remove 1-0-0-0-5
execute if score number timeStopDuration matches ..0 run tag @a remove timeStopper

execute if score number timeStopDuration matches ..0 run scoreboard players reset number timeStopDuration