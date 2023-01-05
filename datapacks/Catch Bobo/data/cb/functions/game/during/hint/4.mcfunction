scoreboard players set number hint 4

execute at @p[team=Bobo,tag=bobo] run tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"Bobo ","color":"gold","bold":true},{"text":"is nearest to ","color":"yellow"},{"text":"@p[team=Hunters,gamemode=!spectator]","color":"dark_red","bold":true},{"text":".","color":"yellow"}]
execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

kill @e[type=marker,tag=bobo]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}