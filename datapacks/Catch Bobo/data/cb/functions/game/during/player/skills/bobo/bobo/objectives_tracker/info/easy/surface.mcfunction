execute if entity @e[type=marker,tag=objective] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/active

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO4] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Harambe\'s Grave","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO5] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Toilet","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO6] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Monkey Statue","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO7] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Mouse Temple","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO8] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Pillar","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO9] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Cheese","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO10] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Goat","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO11] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Dummy","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO12] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Cake","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO13] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Mainframe","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO14] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Sewer","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO15] if entity @e[type=armor_stand,tag=package] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Amazon Package","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO15] unless entity @e[type=armor_stand,tag=package] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"House","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO17] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Sheep","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO18] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Turtle Eggs","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO19] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Pig","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO20] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Potato Furnace","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO23] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Drowned","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO25] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"End Portal Frame","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=easyObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=EO26] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Panda","bold":true,"color":"green"}]

execute unless entity @e[type=marker,tag=easyObjective,tag=!tunnel,] if entity @e[type=marker,tag=easyObjective,tag=tunnel] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Surface Objectives","bold":true,"color":"yellow"}]

execute unless entity @e[type=marker,tag=easyObjective] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tracking Objectives","bold":true,"color":"red"}]