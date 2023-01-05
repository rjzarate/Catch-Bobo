scoreboard players set O8 objectiveMList 0
scoreboard players remove @s objectiveMC 1


summon drowned ~4.243 ~ ~4.243 {Rotation:[135F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~-4.243 ~ ~4.243 {Rotation:[-135F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~4.243 ~ ~-4.243 {Rotation:[45F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~-4.243 ~ ~-4.243 {Rotation:[-45F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~-6 ~ ~ {Rotation:[-90F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~6 ~ ~ {Rotation:[90F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~ ~ ~-6 {Rotation:[0F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
summon drowned ~ ~ ~6 {Rotation:[-180F,0F],HandItems:[{id:"minecraft:trident",Count:1b},{}]}
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0.75

execute if score @s objectiveM1 matches 8 run scoreboard players reset @s objectiveM1
execute if score @s objectiveM2 matches 8 run scoreboard players reset @s objectiveM2
execute if score @s objectiveM3 matches 8 run scoreboard players reset @s objectiveM3
execute if score @s objectiveM4 matches 8 run scoreboard players reset @s objectiveM4
execute if score @s objectiveM5 matches 8 run scoreboard players reset @s objectiveM5
execute if score @s objectiveM6 matches 8 run scoreboard players reset @s objectiveM6
execute if score @s objectiveM7 matches 8 run scoreboard players reset @s objectiveM7
execute if score @s objectiveM8 matches 8 run scoreboard players reset @s objectiveM8
execute if score @s objectiveM9 matches 8 run scoreboard players reset @s objectiveM9
execute if score @s objectiveM10 matches 8 run scoreboard players reset @s objectiveM10

execute if score constant sNotifyHO matches 1 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 1 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a ","color":"aqua"},{"text":"Medium Objective","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
execute if score constant sNotifyHO matches 3 as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 0.75
execute if score constant sNotifyHO matches 3 run tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"Bobo ","bold":true,"color":"gold"},{"text":"completed a ","color":"aqua"},{"text":"Medium Objective","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]

tellraw @s ["",{"text":"\n "},{"text":"Objective Complete:","bold":true,"color":"aqua"},{"text":"\n"},{"text":"- Swim in Lake Bobo","strikethrough":true,"color":"yellow"}]
execute if score @s objectiveMC matches 1.. run function cb:game/pre/player/objectives/notify/medium