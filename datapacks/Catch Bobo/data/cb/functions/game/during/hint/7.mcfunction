scoreboard players set number hint 6

tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"Hint -","bold":true,"color":"green"},{"text":"\n"},{"text":"Bobo","color":"gold","bold":true},{"text":" is in estimated biome:","color":"yellow"}]

execute as @p[team=Bobo,tag=bobo] store result score number hintX run data get entity @s Pos[0] 1
execute as @p[team=Bobo,tag=bobo] store result score number hintZ run data get entity @s Pos[2] 1

execute if score @p[team=Bobo,tag=bobo] hintX matches -80..79 if score @p[team=Bobo,tag=bobo] hintZ matches -256..-133 run tellraw @a[team=Hunters] {"text":"Double Tree Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches -80..47 if score @p[team=Bobo,tag=bobo] hintZ matches -368..-257 run tellraw @a[team=Hunters] {"text":"Mouse Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches -80..63 if score @p[team=Bobo,tag=bobo] hintZ matches -464..-369 run tellraw @a[team=Hunters] {"text":"Temple","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 64..127 if score @p[team=Bobo,tag=bobo] hintZ matches -464..-401 run tellraw @a[team=Hunters] {"text":"Bamboo Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 112..191 if score @p[team=Bobo,tag=bobo] hintZ matches -400..-353 run tellraw @a[team=Hunters] {"text":"Viney Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 128..191 if score @p[team=Bobo,tag=bobo] hintZ matches -464..-401 run tellraw @a[team=Hunters] {"text":"Vinely Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 192..271 if score @p[team=Bobo,tag=bobo] hintZ matches -464..-353 run tellraw @a[team=Hunters] {"text":"Mount Bobo","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 224..271 if score @p[team=Bobo,tag=bobo] hintZ matches -352..-257 run tellraw @a[team=Hunters] {"text":"Flower Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 144..223 if score @p[team=Bobo,tag=bobo] hintZ matches -352..-289 run tellraw @a[team=Hunters] {"text":"Tall Grass Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 208..223 if score @p[team=Bobo,tag=bobo] hintZ matches -288..-257 run tellraw @a[team=Hunters] {"text":"Tall Grass Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 208..271 if score @p[team=Bobo,tag=bobo] hintZ matches -256..-241 run tellraw @a[team=Hunters] {"text":"Tall Grass Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 144..271 if score @p[team=Bobo,tag=bobo] hintZ matches -240..-113 run tellraw @a[team=Hunters] {"text":"Lake Bobo","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 80..143 if score @p[team=Bobo,tag=bobo] hintZ matches -224..-113 run tellraw @a[team=Hunters] {"text":"Orange Tulip Jungle","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 64..111 if score @p[team=Bobo,tag=bobo] hintZ matches -400..-369 run tellraw @a[team=Hunters] {"text":"Big Tree Island","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 48..111 if score @p[team=Bobo,tag=bobo] hintZ matches -368..-353 run tellraw @a[team=Hunters] {"text":"Big Tree Island","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 48..143 if score @p[team=Bobo,tag=bobo] hintZ matches -352..-257 run tellraw @a[team=Hunters] {"text":"Big Tree Island","bold":true,"color":"aqua"}
execute if score @p[team=Bobo,tag=bobo] hintX matches 80..143 if score @p[team=Bobo,tag=bobo] hintZ matches -256..-225 run tellraw @a[team=Hunters] {"text":"Big Tree Island","bold":true,"color":"aqua"}


execute as @a[team=Hunters] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

kill @e[type=armor_stand,tag=hint]

kill @e[type=marker,tag=bobo]
execute at @p[team=Bobo,tag=bobo] run summon marker ~ ~ ~ {Tags:["noDamage","noTimeStop","hint"]}