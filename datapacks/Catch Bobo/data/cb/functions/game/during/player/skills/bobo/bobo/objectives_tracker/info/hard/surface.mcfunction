execute if entity @e[type=marker,tag=objective] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/active

execute at @s as @e[type=marker,tag=hardObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=HO3] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Emergency Room","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=hardObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=HO4] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Fireworks","bold":true,"color":"green"}]


execute unless entity @e[type=marker,tag=hardObjective,tag=!tunnel] if entity @e[type=marker,tag=hardObjective,tag=tunnel] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Surface Objectives","bold":true,"color":"yellow"}]

execute unless entity @e[type=marker,tag=hardObjective] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tracking Objectives","bold":true,"color":"red"}]