scoreboard players operation @s battery -= .batteryUsage stats
#for grayscale in ability directory
	scoreboard players set #hackerSuccess temp 1

execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["ransomware","timeStoppable"],Duration:20000}

#gets the area effect cloud to face where you are facing
execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=ransomware,tag=!finished,limit=1,sort=nearest] ^ ^ ^ ~ ~

#uuid so the horse doesnt hurt the activator
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ransomware,tag=!finished,limit=1,sort=nearest] uuidLink = @s uuid

#range
scoreboard players operation .range stats *= #4 constant
execute positioned ~ ~-3 ~ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=ransomware,tag=!finished,limit=1,sort=nearest] ransomwareRange = .range stats

tag @e[type=minecraft:area_effect_cloud,tag=ransomware,tag=!finished] add finished