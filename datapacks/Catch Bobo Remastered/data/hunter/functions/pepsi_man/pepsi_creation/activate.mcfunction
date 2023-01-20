function general:get_stats
scoreboard players remove @s pepsiCreationAmmo 1
execute if score @s pepsiCreationAmmo < .maxAmmo pepsiCreationStats unless score @s pepsiCreationCD matches 1.. run scoreboard players operation @s pepsiCreationCD += .cooldown20t pepsiCreationStats
#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["pepsiCreation"]}}].Slot
	execute unless score @s pepsiCreationAmmo matches 1.. run function general:animate/add/directory

#to know if the pepsi can you're giving is to yourself
tag @s add givingPepsiCan

#gives item
execute as @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,distance=..20] run give @s minecraft:ender_eye{display:{Name:'{"text":"Pepsi Bottle","color":"dark_red","bold":true,"italic":false}',Lore:['[{"text":"Description: ","color":"green","italic":"false"},{"text":"Consume a crisp drink, giving","color":"gray","italic":"false"}]','{"text":" team immunity, regeneration, and speed.","color":"gray","italic":"false"}','{"text":" Team immunity allows you to phase through","color":"gray","italic":"false"}','{"text":" certain team attacks.","color":"gray","italic":"false"}','{"text":""}','{"text":"On Consumption:","color":"gray","italic":"false"}','[{"text":" Team Immunity Duration: ","color":"gray","italic":"false"},{"text":"8","color":"white","italic":"false"}]','[{"text":" Regeneration I Duration: ","color":"gray","italic":"false"},{"text":"4","color":"green","italic":"false"}]','[{"text":" Speed I Duration: ","color":"gray","italic":"false"},{"text":"4","color":"aqua","italic":"false"}]','{"text":""}','{"text":"Team Immunity Sources:","color":"green","italic":"false"}','{"text":" Range Damage","color":"gray","italic":"false"}','{"text":" Thorn Damage","color":"gray","italic":"false"}','{"text":" Negative Effects","color":"gray","italic":"false"}','{"text":" Target Detection","color":"gray","italic":"false"}']},Tags:["pepsiCan","onConsumption","onConsumptionRegeneration1","onConsumptionSpeed1","onConsumptionTeamImmunity"],pepsiCan:1,onConsumptionRegeneration1:8,onConsumptionSpeed1:4,onConsumptionTeamImmunity:4,noDrop:1,CustomModelData:1750} 1
#audio and visual (text) to the player
execute as @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,distance=..20] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
execute as @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,distance=..20] if entity @s[tag=!givingPepsiCan] run tellraw @s ["",{"text":"Pepsi Man ","bold":true,"color":"dark_red"},{"text":"gave you a ","bold":true},{"text":"Pepsi Bottle","bold":true,"color":"dark_red"},{"text":"!","bold":true}]
execute if entity @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,tag=!givingPepsiCan,distance=..20] if entity @s[tag=hasPepsiCan] run tellraw @s ["",{"text":"You gave someone a ","bold":true},{"text":"Pepsi Bottle","bold":true,"color":"dark_red"},{"text":"!","bold":true}]
execute if entity @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,tag=!givingPepsiCan,distance=..20] if entity @s[tag=hasPepsiCan] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2

execute as @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,distance=..20] if entity @s[tag=givingPepsiCan] run tellraw @s ["",{"text":"You gave yourself a ","bold":true},{"text":"Pepsi Can","bold":true,"color":"dark_red"},{"text":"!","bold":true}]
#removes advancement to check when they right click the pepsi can
execute as @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,distance=..20] run advancement revoke @s only hunter:pepsi_man/pepsi_can
#adds hasPepsiCan tag
execute as @p[tag=hunter,gamemode=!spectator,tag=!hasPepsiCan,distance=..20] run tag @s add hasPepsiCan

tag @s remove givingPepsiCan