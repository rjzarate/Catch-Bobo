scoreboard players set number hint 5

tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"Bobo","color":"gold","bold":true},{"text":"\'s coordinates are rather:","color":"yellow"}]

scoreboard players set number hintX 96
scoreboard players set number hintZ -288
execute as @p[team=Bobo,tag=bobo] store result score number hintY run data get entity @s Pos[1] 1
execute as @p[team=Bobo,tag=bobo] store result score @s x run data get entity @s Pos[0] 1
execute as @p[team=Bobo,tag=bobo] store result score @s z run data get entity @s Pos[2] 1

execute as @p[team=Bobo,tag=bobo] run scoreboard players operation number hintX -= @s x
execute as @p[team=Bobo,tag=bobo] run scoreboard players remove number hintX 1
execute as @p[team=Bobo,tag=bobo] run scoreboard players operation number hintX += constant 96

execute as @p[team=Bobo,tag=bobo] run scoreboard players operation number hintZ -= @s z
execute as @p[team=Bobo,tag=bobo] run scoreboard players remove number hintZ 1
execute as @p[team=Bobo,tag=bobo] run scoreboard players operation number hintZ += constant -288

execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 41..44 run tellraw @a[team=Hunters] ["",{"text":"x: ","color":"yellow"},{"score":{"name":"@p[team=Bobo,tag=bobo]","objective":"x"},"bold":true,"color":"aqua"},{"text":" | z: ","color":"yellow"},{"score":{"name":"@p[team=Bobo,tag=bobo]","objective":"x"},"bold":true,"color":"aqua"}]
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 41..44 run tellraw @a[team=Hunters] ["",{"text":"x: ","color":"yellow"},{"score":{"name":"number","objective":"hintX"},"bold":true,"color":"aqua"},{"text":" | z: ","color":"yellow"},{"score":{"name":"number","objective":"hintZ"},"bold":true,"color":"aqua"}]

execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 45..48 run tellraw @a[team=Hunters] ["",{"text":"x: ","color":"yellow"},{"score":{"name":"number","objective":"hintX"},"bold":true,"color":"aqua"},{"text":" | z: ","color":"yellow"},{"score":{"name":"number","objective":"hintZ"},"bold":true,"color":"aqua"}]
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 45..48 run tellraw @a[team=Hunters] ["",{"text":"x: ","color":"yellow"},{"score":{"name":"@p[team=Bobo,tag=bobo]","objective":"x"},"bold":true,"color":"aqua"},{"text":" | z: ","color":"yellow"},{"score":{"name":"@p[team=Bobo,tag=bobo]","objective":"x"},"bold":true,"color":"aqua"}]


execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

kill @e[type=marker,tag=bobo]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}