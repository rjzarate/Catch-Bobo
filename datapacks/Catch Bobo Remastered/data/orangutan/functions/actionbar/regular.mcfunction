execute if predicate orangutan:impostor/kill store result score int actionbarCD run scoreboard players get @s killCD
execute if predicate orangutan:impostor/vent store result score int actionbarCD run scoreboard players get @s ventCD
execute if predicate orangutan:impostor/create_vent store result score int actionbarCD run scoreboard players get @s createVentCD
execute if predicate orangutan:teemo/blinding_dart store result score int actionbarCD run scoreboard players get @s blindingDartCD
execute if predicate orangutan:purple_guy/12am store result score int actionbarCD run scoreboard players get @s 12am5amCD
execute if predicate orangutan:purple_guy/5am store result score int actionbarCD run scoreboard players get @s 12am5amCD


scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]


##impostor only
	#player not in range
	execute if predicate orangutan:impostor/kill if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 at @s unless entity @a[team=Hunters,gamemode=!spectator,distance=..4,tag=!impostorStun,tag=!displayOnly,tag=!invincible] run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]
	#vent not in range
	execute if predicate orangutan:impostor/vent if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 at @s unless entity @e[type=minecraft:turtle,distance=..3,tag=vent] run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]
	#vent in range
	execute if predicate orangutan:impostor/create_vent if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]
	execute if predicate orangutan:impostor/create_vent if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 at @s if predicate general:on_ground at @s unless block ~ ~-1 ~ #minecraft:air unless entity @e[type=minecraft:turtle,tag=vent,distance=..1] run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]