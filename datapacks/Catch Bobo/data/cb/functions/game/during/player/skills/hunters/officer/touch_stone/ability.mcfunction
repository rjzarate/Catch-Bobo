scoreboard players remove @s touchStone 1

execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run kill @s
execute at @s run summon wolf ~ ~ ~ {Team:"Hunters",Health:20f,Owner:[I;0,0,0,0],Tags:["dog"],CustomName:'{"text":"Dog","color":"dark_red","bold":true,"italic":false}',Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.45},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:10}]}

execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner0 run scoreboard players get @s UUID0
execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner1 run scoreboard players get @s UUID1
execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner2 run scoreboard players get @s UUID2
execute at @s store result score @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner3 run scoreboard players get @s UUID3




execute at @s run data modify entity @e[type=minecraft:wolf,limit=1,sort=nearest,tag=dog] Owner set from entity @s UUID

execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 2 1
execute at @s run particle minecraft:totem_of_undying ~ ~0.25 ~ 0.1 0.25 0.1 0.2 5