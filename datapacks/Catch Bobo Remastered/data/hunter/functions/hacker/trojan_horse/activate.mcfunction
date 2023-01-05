scoreboard players operation @s battery -= .batteryUsage stats


execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["trojanHorse","timeStoppable"],Duration:20000}
execute at @s anchored eyes run summon minecraft:horse ^ ^-0.5 ^ {Silent:0b,Tame:1b,Invulnerable:1b,NoAI:1b,Tags:["trojanHorse","timeStoppable"],ArmorItem:{}}

#gets the area effect cloud to face where you are facing
execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!finished,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute at @s anchored eyes run tp @e[type=minecraft:horse,tag=trojanHorse,tag=!finished,limit=1,sort=nearest] ^ ^ ^ ~ 0

#uuid so the horse doesnt hurt the activator
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!finished,limit=1,sort=nearest] uuidLink = @s uuid
scoreboard players operation @e[type=minecraft:horse,tag=trojanHorse,tag=!finished,limit=1,sort=nearest] uuidLink = @s uuid

#damage
scoreboard players operation #damage temp = .rangeDamage stats
function general:apply/damage/scoreboard
execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!finished,limit=1,sort=nearest] trojanHorseDamage = #damage temp

#range
scoreboard players operation .range stats *= #4 constant
execute at @s anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!finished,limit=1,sort=nearest] trojanHorseRange = .range stats

tag @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!finished] add finished
tag @e[type=minecraft:horse,tag=trojanHorse,tag=!finished] add finished