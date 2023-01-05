execute if entity @e[type=marker,tag=objective] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/active

execute at @s as @e[type=marker,tag=mediumObjective,tag=tunnel,sort=nearest,limit=1] if entity @s[tag=MO14] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Fire","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=tunnel,sort=nearest,limit=1] if entity @s[tag=MO18] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Launch Nuclear Weapons","bold":true,"color":"green"}]

execute unless entity @e[type=marker,tag=mediumObjective,tag=tunnel] if entity @e[type=marker,tag=mediumObjective,tag=!tunnel] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tunnel Objectives","bold":true,"color":"yellow"}]

execute unless entity @e[type=marker,tag=mediumObjective] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tracking Objectives","bold":true,"color":"red"}]