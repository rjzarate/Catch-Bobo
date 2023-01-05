scoreboard players set boolean objectiveSLT 1
title @a[team=Hunters] times 10 100 20
title @a[team=Hunters] subtitle ["",{"text":"Kill ","italic":true,"color":"gray"},{"text":"Bobo ","bold":true,"italic":true,"color":"gold"},{"text":"before the time runs out!","italic":true,"color":"gray"}]
title @a[team=Bobo,tag=!bobo] subtitle ["",{"text":"Protect ","italic":true,"color":"gray"},{"text":"Bobo ","bold":true,"italic":true,"color":"gold"},{"text":"until the time runs out!","italic":true,"color":"gray"}]
title @a[team=Bobo,tag=bobo] subtitle ["",{"text":"Survive until the time runs out!","italic":true,"color":"gray"}]
title @a[team=Hunters] title ["",{"text":"XX","obfuscated":true},{"text":"Bobo","bold":true,"color":"gold"},{"text":" is on the","color":"yellow"},{"text":" LAST OBJECTIVE","bold":true,"color":"dark_red"},{"text":"XX","obfuscated":true}]
title @a[team=Bobo,tag=!bobo] title ["",{"text":"XX","obfuscated":true},{"text":"Bobo","bold":true,"color":"gold"},{"text":" is on the","color":"yellow"},{"text":" LAST OBJECTIVE","bold":true,"color":"dark_red"},{"text":"XX","obfuscated":true}]
title @a[team=Bobo,tag=bobo] title ["",{"text":"XX","obfuscated":true},{"text":"YOU","bold":true,"color":"gold"},{"text":" are on the","color":"yellow"},{"text":" LAST OBJECTIVE","bold":true,"color":"dark_red"},{"text":"XX","obfuscated":true}]

tellraw @a ["",{"text":"\n"},{"text":"Time Remaining: ","bold":true,"color":"red"},{"score":{"name":"constant","objective":"sLastOT"},"bold":true,"color":"dark_red"},{"text":" seconds.","color":"dark_red"}]
execute if score constant sEnableLOG matches 1 run tellraw @a ["",{"text":"Enable Last Objective Glowing: ","bold":true,"color":"yellow"},{"text":"True","bold":true,"color":"green"}]
execute unless score constant sEnableLOG matches 1 run tellraw @a ["",{"text":"Enable Last Objective Glowing: ","bold":true,"color":"yellow"},{"text":"False","bold":true,"color":"red"}]

execute at @s run particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0.5 30 force
execute at @s run playsound minecraft:entity.wither.death player @a ~ ~ ~ 300 2
function cb:game/during/player/skills/bobo/bobo/start_last_objective/sound/1
schedule function cb:game/during/player/skills/bobo/bobo/start_last_objective/sound/2 5t
schedule function cb:game/during/player/skills/bobo/bobo/start_last_objective/sound/3 10t
schedule function cb:game/during/player/skills/bobo/bobo/start_last_objective/sound/4 15t
schedule function cb:game/during/player/skills/bobo/bobo/start_last_objective/sound/5 20t

execute if score constant sEnableLOG matches 1 run effect give @s glowing 1 0

clear @s minecraft:carrot_on_a_stick{startLastObjective:1}