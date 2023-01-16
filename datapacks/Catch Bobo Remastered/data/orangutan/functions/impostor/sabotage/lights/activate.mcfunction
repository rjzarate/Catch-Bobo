function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation .chargeUp stats *= #20 constant
scoreboard players operation @s sabotageCD = .cooldown stats
scoreboard players operation @s sabotageCD += .chargeUp stats
scoreboard players operation @s sabotageCD += .duration stats
scoreboard players operation @s sabotageChargeUp = .chargeUp stats

#ocelot summon
	execute as @a[team=Hunters,gamemode=!spectator,limit=2,sort=furthest] at @s run summon minecraft:ocelot ~ ~ ~ {Glowing:1b,Team:"colorGray",Health:20f,Tags:["sabotage","lights","timeStoppable","new"],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.11250000447034836d}],CustomName:'{"text":"Lights","bold":true}'}
	scoreboard players operation @e[type=minecraft:ocelot,tag=new] uuidLink = @s uuid
	tag @e[type=minecraft:ocelot,tag=new] remove new

#visual and sound
title @a[team=Hunters,gamemode=!spectator] times 0 30 10
title @a[team=Hunters,gamemode=!spectator] title ["",{"text":"FIX LIGHTS","bold":true,"italic":false,"color":"red"}]
title @a[team=Hunters,gamemode=!spectator] subtitle ["",{"text":"Kill both gray ocelots to fix lights.","bold":false,"italic":true,"color":"white"}]
tellraw @a[team=Hunters,gamemode=!spectator] ["",{"text":"FIX LIGHTS\n","bold":true,"italic":false,"color":"red"},{"text":"Kill both gray ocelots to fix lights.\nFailure results in darkness; ocelots can still be killed to remove the darkness effect.","bold":false,"italic":true,"color":"white"}] 
execute as @a[team=Hunters,gamemode=!spectator] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0