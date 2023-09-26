function general:get_stats
#adds grayscale
	function general:animate/add/selected_item

scoreboard players operation @s blindingDartCD = .cooldown stats
scoreboard players operation @s blindingDartCD *= #20 constant

execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:50b,duration:100}]}] run scoreboard players operation @s uuidLink = @p[tag=teemo,limit=1,sort=nearest,gamemode=!spectator] uuid
execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:50b,duration:100}]}] run data modify entity @s damage set value 0.5d
execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:50b,duration:100}]}] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:arrow,tag=!blindingDart,nbt={custom_potion_effects:[{id:"minecraft:unluck",amplifier:50b,duration:100}]}] run tag @s add blindingDart