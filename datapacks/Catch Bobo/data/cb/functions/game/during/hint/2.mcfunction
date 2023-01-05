scoreboard players set number hint 2
execute as @p[team=Bobo,tag=bobo] store result score number hintZ run data get entity @s Pos[2] 1

tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"A line of barrier particles in the sky are shown where ","color":"yellow"},{"text":"Bobo ","color":"gold","bold":true},{"text":"was on the x-axis.","color":"yellow"},{"text":"\nThe line will disappear after the next hint.","color":"yellow"}]
execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

kill @e[type=marker,tag=bobo]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}