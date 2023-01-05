execute if score @s blueVent matches 1.. if entity @s[nbt={OnGround:1b}] at @s unless entity @e[type=slime,distance=..11,tag=vent] run title @s actionbar ["",{"text":"Blue Vent - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"blueVent"},"bold":true,"color":"yellow"},{"text":"/2 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"True ","bold":true,"color":"green"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"No","bold":true,"color":"green"}]

execute if score @s blueVent matches 1.. if entity @s[nbt={OnGround:1b}] at @s if entity @e[type=slime,distance=..11,tag=vent] run title @s actionbar ["",{"text":"Blue Vent - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"blueVent"},"bold":true,"color":"yellow"},{"text":"/2 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"True ","bold":true,"color":"green"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Yes","bold":true,"color":"red"}]

execute if score @s blueVent matches 1.. if entity @s[nbt={OnGround:0b}] at @s unless entity @e[type=slime,distance=..11,tag=vent] run title @s actionbar ["",{"text":"Blue Vent - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"blueVent"},"bold":true,"color":"yellow"},{"text":"/2 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"False ","bold":true,"color":"red"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"No","bold":true,"color":"green"}]

execute if score @s blueVent matches 1.. if entity @s[nbt={OnGround:0b}] at @s if entity @e[type=slime,distance=..11,tag=vent] run title @s actionbar ["",{"text":"Blue Vent - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"blueVent"},"bold":true,"color":"yellow"},{"text":"/2 ","bold":true,"color":"yellow"},{"text":"| "},{"text":"On Ground: ","color":"yellow"},{"text":"False ","bold":true,"color":"red"},{"text":"| "},{"text":"Near Vent: ","color":"yellow"},{"text":"Yes","bold":true,"color":"red"}]




execute if score @s blueVent matches 0 run title @s actionbar ["",{"text":"Blue Vent - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"blueVent"},"bold":true,"color":"yellow"},{"text":"/2","bold":true,"color":"yellow"}]


