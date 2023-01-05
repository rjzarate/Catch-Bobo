execute if entity @e[type=marker,tag=objective] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/active

execute unless entity @e[type=marker,tag=hardObjective,tag=tunnel] if entity @e[type=marker,tag=hardObjective,tag=!tunnel] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tunnel Objectives","bold":true,"color":"yellow"}]

execute unless entity @e[type=marker,tag=hardObjective] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tracking Objectives","bold":true,"color":"red"}]