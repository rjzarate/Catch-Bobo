execute as @a at @s run playsound minecraft:entity.cat.ambient player @s ~ ~ ~ 10 0
execute at @a[gamemode=!spectator] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.1 100 normal
tag @a remove stun
title @a times 0 100 20
title @a subtitle {"text":"Time ran out.","color":"gray"}
title @a[team=Lobby] title {"text":"GAME ENDED","bold":true,"color":"gold"}
title @a[team=Hunters] title {"text":"TIE!","bold":true,"color":"gold"}
title @a[team=Bobo] title {"text":"TIE!","bold":true,"color":"gold"}
tellraw @a ["",{"text":"\n"},{"text":"It's a tie!\n----------------------------------------","color":"green"},{"text":"\n                   "},{"text":"Catch Bobo","bold":true,"color":"white"},{"text":"\n\n                   "},{"text":"Winning Team","color":"yellow"},{"text":"\n                       "},{"text":"None","bold":true,"color":"gray"},{"text":"\n\n                   "},{"text":"Losing Team","color":"red"},{"text":"\n                       "},{"text":"None","bold":true,"color":"gray"},{"text":"\n\n"},{"text":"----------------------------------------\n","color":"green"},{"text":"Tie Condition: ","bold":true,"color":"green"},{"text":"time ran out.","color":"yellow"}]
