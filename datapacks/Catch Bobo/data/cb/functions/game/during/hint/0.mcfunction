scoreboard players set number hint 0
tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"Unlucky, Hint Machine broke. Sadge.","color":"yellow"}]
execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

kill @e[type=marker,tag=hint]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}