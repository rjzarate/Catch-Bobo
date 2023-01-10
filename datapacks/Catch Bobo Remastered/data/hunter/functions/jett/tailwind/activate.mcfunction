function general:get_stats
scoreboard players remove @s tailwindAmmo 1
scoreboard players operation .durationDecimal stats /= #5 constant
scoreboard players operation .cooldown stats *= #20 constant
execute if score @s tailwindAmmo < .maxAmmo tailwindStats unless score @s tailwindCD matches 1.. run scoreboard players operation @s tailwindCD += .cooldown20t tailwindStats
scoreboard players operation @s tailwindCD += .durationDecimal stats
scoreboard players operation @s tailwindDuration = .durationDecimal stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

execute at @s run playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 0

#slow falling & levitation to reduce Motion1
scoreboard players operation #tailwindEffects temp = .durationDecimal stats
scoreboard players remove #tailwindEffects temp 1
scoreboard players operation @s slowFalling = @s slowFalling
execute if score @s slowFalling < .durationDecimal stats run scoreboard players operation @s slowFalling = #tailwindEffects temp
scoreboard players operation @s levitation1 = @s levitation1
execute if score @s levitation1 < .durationDecimal stats run scoreboard players operation @s levitation1 = #tailwindEffects temp

#create armor stand
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["jett","tailwind"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[type=minecraft:armor_stand,limit=1,tag=tailwind,tag=!finished] uuidLink = @s uuid
data modify entity @e[type=minecraft:armor_stand,limit=1,tag=tailwind,tag=!finished] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=minecraft:armor_stand,limit=1,tag=tailwind,tag=!finished] Pos[1] set from entity @s Pos[1]
tag @e[type=minecraft:armor_stand,limit=1,tag=tailwind,tag=!finished] add finished