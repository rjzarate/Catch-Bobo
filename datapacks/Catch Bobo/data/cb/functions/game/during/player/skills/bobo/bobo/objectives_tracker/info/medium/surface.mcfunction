execute if entity @e[type=marker,tag=objective] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/active


execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO6] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Mount Bobo","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO7] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Pickle","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO8] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Lake Bobo","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO9] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Bomb Site","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO10] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Big Tree","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO11] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Waterfall","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO12] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Bell","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO13] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Jukebox","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO14] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Fire","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO15] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Herobrine","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO16] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Bees","bold":true,"color":"green"}]

execute at @s as @e[type=marker,tag=mediumObjective,tag=!tunnel,sort=nearest,limit=1] if entity @s[tag=MO17] run title @p actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"Enderman","bold":true,"color":"green"}]


execute unless entity @e[type=marker,tag=mediumObjective,tag=!tunnel,] if entity @e[type=marker,tag=mediumObjective,tag=tunnel] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Surface Objectives","bold":true,"color":"yellow"}]

execute unless entity @e[type=marker,tag=mediumObjective] run title @s actionbar ["",{"text":"Objectives Tracker - ","bold":true,"color":"gold"},{"text":"No Tracking Objectives","bold":true,"color":"red"}]