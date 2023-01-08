execute if predicate orangutan:impostor/report_body run scoreboard players operation chargeUp actionbarCD = @s reportBodyChargeUp
execute if predicate orangutan:impostor/report_body run scoreboard players operation duration actionbarCD = @s reportBodyDuration
execute if predicate orangutan:impostor/report_body store result score int actionbarCD run scoreboard players get @s reportBodyCD
execute if predicate orangutan:impostor/report_body if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s reportBodyDuration
execute if predicate orangutan:impostor/report_body if score chargeUp actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s reportBodyChargeUp

execute if predicate orangutan:impostor/sabotage run scoreboard players operation chargeUp actionbarCD = @s sabotageChargeUp
execute if predicate orangutan:impostor/sabotage run scoreboard players operation duration actionbarCD = @s sabotageDuration
execute if predicate orangutan:impostor/sabotage store result score int actionbarCD run scoreboard players get @s sabotageCD
execute if predicate orangutan:impostor/sabotage if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s sabotageDuration
execute if predicate orangutan:impostor/sabotage if score chargeUp actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s sabotageChargeUp


scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score chargeUp actionbarCD matches 1.. run title @s actionbar ["",{"text":"Charge Up ","bold":false,"italic":true,"color":"aqua"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]


##impostor only
	#not near immobilized player
		execute if predicate orangutan:impostor/report_body unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 at @s unless entity @a[team=Hunters,gamemode=!spectator,distance=..4,tag=impostorStun] run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]
	#1 or less hunters alive
		execute if predicate orangutan:impostor/sabotage store result score #aliveHunters temp if entity @a[team=Hunters,gamemode=!spectator]
		execute if predicate orangutan:impostor/sabotage unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 if score #aliveHunters temp matches ..1 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]