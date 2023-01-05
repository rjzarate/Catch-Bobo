execute store result score @s y run data get entity @s Pos[1]

execute if score @s y matches ..23 at @s as @e[type=marker,tag=objective,tag=tunnel,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 1
execute if score @s y matches ..23 at @s as @e[type=marker,tag=objective,tag=tunnel,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 1
execute if score @s y matches 24.. at @s as @e[type=marker,tag=objective,tag=!tunnel,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 1
execute if score @s y matches 24.. at @s as @e[type=marker,tag=objective,tag=!tunnel,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 1

execute at @s run summon bat ~ 400 ~ {Tags:["objectivesTracker"],Silent:1b,NoAI:1b,Health:1f,HandItems:[{id:"minecraft:compass",Count:1b,tag:{objectivesTracker:1,noDrop:1,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:0,Y:0,Z:0},display:{Name:'{"text":"Objectives Tracker","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Used to track the nearest objective.","color":"gray"}','{"text":"Can only track tunnel objectives when in the tunnel.","color":"gray"}','{"text":"Cannot track surface objectives when in the tunnel.","color":"gray"}']}}},{}],HandDropChances:[0.000F,0.085F]}

execute if score @s y matches ..23 at @s positioned ~ 400 ~ store result entity @e[type=bat,tag=objectivesTracker,limit=1,sort=nearest] HandItems.[0].tag.LodestonePos.X int 1 at @s run scoreboard players get @e[type=marker,tag=objective,tag=tunnel,limit=1,sort=nearest] x
execute if score @s y matches ..23 at @s positioned ~ 400 ~ store result entity @e[type=bat,tag=objectivesTracker,limit=1,sort=nearest] HandItems.[0].tag.LodestonePos.Z int 1 at @s run scoreboard players get @e[type=marker,tag=objective,tag=tunnel,limit=1,sort=nearest] z
execute if score @s y matches 24.. at @s positioned ~ 400 ~ store result entity @e[type=bat,tag=objectivesTracker,limit=1,sort=nearest] HandItems.[0].tag.LodestonePos.X int 1 at @s run scoreboard players get @e[type=marker,tag=objective,tag=!tunnel,limit=1,sort=nearest] x
execute if score @s y matches 24.. at @s positioned ~ 400 ~ store result entity @e[type=bat,tag=objectivesTracker,limit=1,sort=nearest] HandItems.[0].tag.LodestonePos.Z int 1 at @s run scoreboard players get @e[type=marker,tag=objective,tag=!tunnel,limit=1,sort=nearest] z


execute if data entity @s SelectedItem.tag.objectivesTracker at @s positioned ~ 400 ~ run item replace entity @s weapon.mainhand from entity @e[type=bat,tag=objectivesTracker,limit=1,sort=nearest] weapon.mainhand
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{objectivesTracker:1}}]}] at @s positioned ~ 400 ~ run item replace entity @s weapon.offhand from entity @e[type=bat,tag=objectivesTracker,limit=1,sort=nearest] weapon.mainhand

kill @e[type=bat,tag=objectivesTracker]