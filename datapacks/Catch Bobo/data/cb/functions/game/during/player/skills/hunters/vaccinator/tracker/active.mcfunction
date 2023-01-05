execute as @a[team=Bobo,tag=bobo] store result score @s x run data get entity @s Pos[0] 1
execute as @a[team=Bobo,tag=bobo] store result score @s z run data get entity @s Pos[2] 1

execute at @s run summon bat ~ 400 ~ {Tags:["tracker"],Silent:1b,NoAI:1b,Health:1f,HandItems:[{id:"minecraft:compass",Count:1b,tag:{tracker:1,noDrop:1,display:{Name:'{"text":"Voodoo Tracker","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Used to track ","color":"gray"},{"text":"Bobo","color":"gold","bold":true,"italic":false},{"text":"."}]','[{"text":"Can track ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"for up to 10 seconds."}]','[{"text":"Activate by using ","color":"gray"},{"text":"Blood Canister","color":"dark_red","bold":true,"italic":false},{"text":"."}]']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:0,Y:0,Z:0}}},{}],HandDropChances:[0.000F,0.085F]}

execute at @s positioned ~ 400 ~ store result entity @e[type=bat,tag=tracker,limit=1,sort=nearest] HandItems.[0].tag.LodestonePos.X int 1 at @s run scoreboard players get @p[team=Bobo,tag=bobo] x
execute at @s positioned ~ 400 ~ store result entity @e[type=bat,tag=tracker,limit=1,sort=nearest] HandItems.[0].tag.LodestonePos.Z int 1 at @s run scoreboard players get @p[team=Bobo,tag=bobo] z

execute if data entity @s SelectedItem.tag.tracker run item replace entity @s weapon.mainhand from entity @e[type=bat,tag=tracker,limit=1,sort=nearest] weapon.mainhand
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{tracker:1}}]}] run item replace entity @s weapon.offhand from entity @e[type=bat,tag=tracker,limit=1,sort=nearest] weapon.mainhand

kill @e[type=bat,tag=tracker]