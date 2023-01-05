execute if score number initialT matches 1.. run effect give @a[team=Hunters] resistance 4 1 true
execute if score number initialT matches 1.. run effect give @a[team=Hunters] instant_health 1 5 true
execute if score number initialT matches 5 run tellraw @a {"text":"5","bold":true,"color":"yellow"}
execute if score number initialT matches 4 run tellraw @a {"text":"4","bold":true,"color":"yellow"}
execute if score number initialT matches 3 run tellraw @a {"text":"3","bold":true,"color":"yellow"}
execute if score number initialT matches 2 run tellraw @a {"text":"2","bold":true,"color":"yellow"}
execute if score number initialT matches 1 run tellraw @a {"text":"1","bold":true,"color":"yellow"}
execute if score number initialT matches 1..5 as @a at @s run playsound minecraft:block.note_block.hat record @s ~ ~ ~ 2 1
execute if score number initialT matches 0 if score number gameT = constant sGameT run function cb:game/pre/map/break_wall
execute if score number initialT matches 0 if score number gameT = constant sGameT run function cb:game/pre/give/hunters/give_all
execute if score number initialT matches 0 if score number gameT = constant sGameT as @a[team=Bobo,tag=bobo] run function cb:game/pre/player/objectives/start
execute if score number initialT matches 0 if score number gameT = constant sGameT run title @a times 10 60 20
execute if score number initialT matches 0 if score number gameT = constant sGameT run title @a title ["",{"text":"xx","obfuscated":true,"color":"yellow"},{"text":"The ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"},{"text":"xx","obfuscated":true,"color":"yellow"}]
execute if score number initialT matches 0 if score number gameT = constant sGameT run title @a[team=Hunters] subtitle ["",{"text":"Objective: ","color":"light_purple"},{"text":"Kill ","color":"red"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
execute if score number initialT matches 0 if score number gameT = constant sGameT run title @a[team=Bobo,tag=bobo] subtitle ["",{"text":"Objective: ","color":"light_purple"},{"text":"Complete all ","color":"aqua"},{"text":"Objectives","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
execute if score number initialT matches 0 if score number gameT = constant sGameT run title @a[team=Bobo,tag=!bobo] subtitle ["",{"text":"Objective:","color":"light_purple"},{"text":" Protect and help ","color":"aqua"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"win.","color":"aqua"}]

execute if score number initialT matches 0 run tellraw @a [{"text":"\nThe ","color":"yellow"},{"text":"Hunters ","bold":true,"color":"dark_red"},{"text":"are released!","color":"yellow"}]
execute if score number initialT matches 0 run tellraw @a[team=Hunters] [{"text":"Main Objective: ","color":"light_purple"},{"text":"Kill ","color":"red"},{"text":"Bobo","bold":true,"color":"gold"},{"text":".","color":"aqua"}]
execute if score number initialT matches 0 run tellraw @a[team=Bobo,tag=bobo] [{"text":"Main Objective: ","color":"light_purple"},{"text":"Complete all ","color":"aqua"},{"text":"Objectives","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
execute if score number initialT matches 0 run tellraw @a[team=Bobo,tag=!bobo] [{"text":"Main Objective:","color":"light_purple"},{"text":" Protect and help ","color":"aqua"},{"text":"Bobo ","bold":true,"color":"gold"},{"text":"win.","color":"aqua"}]
execute if score number initialT matches 0 run tellraw @a[team=Bobo] [{"text":"Alt. Objective:","color":"light_purple"},{"text":" Kill/Stun all ","color":"aqua"},{"text":"Hunters","bold":true,"color":"dark_red"},{"text":".","color":"aqua"}]

execute if score number initialT matches 0 if score number gameT = constant sGameT run playsound minecraft:entity.wither.spawn player @a -78 37 -115 200 1
execute if score number initialT matches 0 run scoreboard players reset number initialT