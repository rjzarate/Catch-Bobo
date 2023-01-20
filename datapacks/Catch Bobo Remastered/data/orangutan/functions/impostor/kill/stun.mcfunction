execute unless score @s glowing matches 2.. run scoreboard players set @s glowing 2
execute unless score @s weakness100 matches 2.. run scoreboard players set @s weakness100 2
execute unless score @s resistance5 matches 2.. run scoreboard players set @s resistance5 2
execute unless score @s slowness100 matches 2.. run scoreboard players set @s slowness100 2
execute unless score @s jumpBoost128 matches 2.. run scoreboard players set @s jumpBoost128 2
execute unless score @s fireResistance matches 2.. run scoreboard players set @s fireResistance 2

scoreboard players operation #int impostorStunDuration = @s impostorStunDuration
scoreboard players operation #dec impostorStunDuration = @s impostorStunDuration
scoreboard players operation #int impostorStunDuration -= .immobilizeDuration20t killStats
scoreboard players operation #dec impostorStunDuration -= .immobilizeDuration20t killStats
scoreboard players operation #int impostorStunDuration *= #-1 constant
scoreboard players operation #dec impostorStunDuration *= #-1 constant
scoreboard players operation #int impostorStunDuration /= #20 constant
scoreboard players operation #dec impostorStunDuration /= #2 constant
scoreboard players operation #dec impostorStunDuration %= #10 constant

scoreboard players operation #int impostorStunRevive = @s impostorStunRevive
scoreboard players operation #dec impostorStunRevive = @s impostorStunRevive
scoreboard players remove #int impostorStunRevive 100
scoreboard players remove #dec impostorStunRevive 100
scoreboard players operation #int impostorStunRevive *= #-1 constant
scoreboard players operation #dec impostorStunRevive *= #-1 constant
scoreboard players operation #int impostorStunRevive /= #20 constant
scoreboard players operation #dec impostorStunRevive /= #2 constant
scoreboard players operation #dec impostorStunRevive %= #10 constant

title @s times 0 5 0
#immobilized display
title @s title ["",{"text":"You are ","bold":true},{"text":"Immobilized","bold":true,"color":"gold"},{"text":"! ","bold":true},{"score":{"name":"#int","objective":"impostorStunDuration"},"bold":true,"italic":false,"color":"gold"},{"text":".","bold":true,"color":"gold"},{"score":{"name":"#dec","objective":"impostorStunDuration"},"bold":true,"italic":false,"color":"gold"},{"text":"s","bold":true,"color":"gold"}]
title @s subtitle ["",{"text":"Have a player crouch near you to become de-immobilized."}]
#immobilized revive display
title @s[scores={impostorStunRevive=1..}] title ["",{"text":"You are being ","bold":true},{"text":"De-immobilized","bold":true,"color":"gold"},{"text":"! ","bold":true}]
title @s[scores={impostorStunRevive=1..}] subtitle ["",{"score":{"name":"#int","objective":"impostorStunRevive"},"bold":true,"italic":false,"color":"gold"},{"text":".","bold":true,"color":"gold"},{"score":{"name":"#dec","objective":"impostorStunRevive"},"bold":true,"italic":false,"color":"gold"},{"text":"s","bold":true,"color":"gold"}]

execute unless score @s impostorStunRevive matches 1.. at @s run particle minecraft:block yellow_concrete ~ ~1 ~ .2 .5 .2 2 5

#revive
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 1.. at @s unless entity @a[tag=!impostorStun,predicate=general:is_sneaking,tag=!timeStoppee,distance=..2] run scoreboard players reset @s impostorStunRevive
execute at @s[tag=!timeStoppee] if entity @a[tag=!impostorStun,predicate=general:is_sneaking,tag=!timeStoppee,distance=..2] run scoreboard players add @s impostorStunRevive 1
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 1.. at @s run particle minecraft:heart ~ ~0.5 ~ 0.2 0.5 0.2 1 1
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 1 at @s run playsound minecraft:block.bone_block.place player @a ~ ~ ~ 1 0.5
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 20 at @s run playsound minecraft:block.bone_block.place player @a ~ ~ ~ 1 1
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 40 at @s run playsound minecraft:block.bone_block.place player @a ~ ~ ~ 1 1.2
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 60 at @s run playsound minecraft:block.bone_block.place player @a ~ ~ ~ 1 1.3
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 80 at @s run playsound minecraft:block.bone_block.place player @a ~ ~ ~ 1 1.5
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 100.. at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 2 1.5
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 100.. run tag @s remove impostorStun
	#give kit items
		execute if score @s[tag=!timeStoppee] impostorStunRevive matches 100.. if score @s[tag=hunter,gamemode=!spectator,tag=bobaFett] jetpackFuel matches 1.. run item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Jetpack","color":"dark_red","bold":true,"italic":false}',color:3950130},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7} 1
execute if score @s[tag=!timeStoppee] impostorStunRevive matches 100.. run scoreboard players reset @s impostorStunRevive

#tick down
execute unless score @s impostorStunRevive matches 1.. run scoreboard players add @s[tag=!timeStoppee] impostorStunDuration 1
execute if score @s impostorStunDuration >= .immobilizeDuration20t killStats run kill @s
execute if score @s impostorStunDuration >= .immobilizeDuration20t killStats run tag @s remove impostorStun