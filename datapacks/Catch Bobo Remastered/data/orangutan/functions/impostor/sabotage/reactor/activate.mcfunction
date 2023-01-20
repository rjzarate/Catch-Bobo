function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation .chargeUp stats *= #20 constant
scoreboard players operation @s sabotageCD = .cooldown stats
scoreboard players operation @s sabotageCD += .chargeUp stats
scoreboard players operation @s sabotageCD += .duration stats
scoreboard players operation @s sabotageChargeUp = .chargeUp stats
scoreboard players operation @s sabotageChargeUp += .duration stats

#ocelot summon
	execute as @a[tag=hunter,gamemode=!spectator,limit=2,sort=furthest] at @s run summon minecraft:ocelot ~ ~ ~ {Glowing:1b,Team:"red",Health:5f,Tags:["sabotage","o2","timeStoppable","new"],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.movement_speed,Base:0.30000001192092896d}],CustomName:'{"text":"O2","bold":true}'}
	scoreboard players operation @e[type=minecraft:ocelot,tag=new] uuidLink = @s uuid
	tag @e[type=minecraft:ocelot,tag=new] remove new

#visual and sound
title @a[tag=hunter,gamemode=!spectator] times 0 30 10
title @a[tag=hunter,gamemode=!spectator] title ["",{"text":"REACTOR MELTDOWN","bold":true,"italic":false,"color":"red"}]
title @a[tag=hunter,gamemode=!spectator] subtitle ["",{"text":"Kill both red ocelots to fix reactor.","bold":false,"italic":true,"color":"white"}]
tellraw @a[tag=hunter,gamemode=!spectator] ["",{"text":"REACTOR MELTDOWN\n","bold":true,"italic":false,"color":"red"},{"text":"Kill both red ocelots to fix reactor.\nFailure grants ","bold":false,"italic":true,"color":"white"},{"text":"Bobo","bold":true,"italic":true,"color":"gold"},{"text":" a fruit.","bold":false,"italic":true,"color":"white"}] 
execute as @a[tag=hunter,gamemode=!spectator] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0