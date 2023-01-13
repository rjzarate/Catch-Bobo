scoreboard players operation @s battery -= .batteryUsage stats
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s rootkitDuration = .duration stats
#for grayscale in ability directory
	scoreboard players set #hackerSuccess temp 1
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["rootkit","timeStoppable"],Duration:20000}
execute at @s anchored eyes run summon minecraft:armor_stand ^ ^-0.5 ^ {Tags:["rootkit","timeStoppable"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:beetroot",Count:1b}],Pose:{Head:[0f,1f,0f]}}


scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=rootkit,limit=1,sort=nearest] rootkitRange = .range rootkitStats

#gets the area effect cloud to face where you are facing
execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=rootkit,tag=!finished,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute at @s anchored eyes run tp @e[type=minecraft:armor_stand,tag=rootkit,tag=!finished,limit=1,sort=nearest] ^ ^ ^ ~ 0

#uuid so the minecraft:armor_stand doesnt hurt the activator
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=rootkit,tag=!finished,limit=1,sort=nearest] uuidLink = @s uuid
scoreboard players operation @e[type=minecraft:armor_stand,tag=rootkit,tag=!finished,limit=1,sort=nearest] uuidLink = @s uuid

#range
execute positioned ~ ~-3 ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=rootkit,tag=!finished,limit=1,sort=nearest] rootkitLifespan = .duration stats

tag @e[type=minecraft:area_effect_cloud,tag=rootkit,tag=!finished] add finished
tag @e[type=minecraft:armor_stand,tag=rootkit,tag=!finished] add finished