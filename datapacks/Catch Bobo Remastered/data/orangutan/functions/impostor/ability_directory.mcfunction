execute if predicate orangutan:impostor/kill at @s if entity @a[team=Hunters,gamemode=!spectator,distance=..4,tag=!impostorStun,tag=!displayOnly,tag=!invincible] unless score @s killCD matches 1.. unless score .hidingPhase game matches 1 run function orangutan:impostor/kill/activate

execute if predicate orangutan:impostor/report_body at @s if entity @a[team=Hunters,gamemode=!spectator,distance=..4,tag=impostorStun] unless score @s reportBodyCD matches 1.. run function orangutan:impostor/report_body/activate

##nonshared venting
	#scoreboard players operation .search uuidLink = @s uuid
	#execute if predicate orangutan:impostor/vent unless score @s ventCD matches 1.. at @s as @e[type=minecraft:turtle,predicate=general:uuid_link_search,distance=..3,limit=1,sort=nearest] run function orangutan:impostor/vent/directory
execute if predicate orangutan:impostor/vent unless score @s ventCD matches 1.. at @s as @e[type=minecraft:turtle,distance=..3,limit=1,tag=vent,sort=nearest] run function orangutan:impostor/vent/directory


execute if predicate orangutan:impostor/create_vent unless score @s createVentCD matches 1.. if predicate general:on_ground at @s unless block ~ ~-1 ~ #minecraft:air unless entity @e[type=minecraft:turtle,tag=vent,distance=..1] run function orangutan:impostor/create_vent/directory


execute if predicate orangutan:impostor/sabotage unless score @s sabotageCD matches 1.. run function orangutan:impostor/sabotage/activate_directory