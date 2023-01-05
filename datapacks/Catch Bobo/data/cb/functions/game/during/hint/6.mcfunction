scoreboard players set number hint 6

tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"Bobo","color":"gold","bold":true},{"text":"\'s y-coordinates are:","color":"yellow"}]


execute as @p[team=Bobo,tag=bobo] store result score number hintY run data get entity @s Pos[1] 1

execute if score number hintY matches 70.. run tellraw @a[team=Hunters] ["",{"text":"y: ","color":"yellow"},{"score":{"name":"number","objective":"hintY"},"bold":true,"color":"aqua"},{"text":" | Sky-High Level","color":"yellow"}]
execute if score number hintY matches 45..69 run tellraw @a[team=Hunters] ["",{"text":"y: ","color":"yellow"},{"score":{"name":"number","objective":"hintY"},"bold":true,"color":"aqua"},{"text":" | Tree Level","color":"yellow"}]
execute if score number hintY matches 25..44 run tellraw @a[team=Hunters] ["",{"text":"y: ","color":"yellow"},{"score":{"name":"number","objective":"hintY"},"bold":true,"color":"aqua"},{"text":" | Ground Level","color":"yellow"}]
execute if score number hintY matches ..24 run tellraw @a[team=Hunters] ["",{"text":"y: ","color":"yellow"},{"score":{"name":"number","objective":"hintY"},"bold":true,"color":"aqua"},{"text":" | Tunnel Level","color":"yellow"}]

execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

kill @e[type=marker,tag=bobo]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}