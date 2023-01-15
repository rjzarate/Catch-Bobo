execute if score @s droppedEnderEye matches 1.. run function hunter:officer/ability_swap/item_check

execute if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] run function hunter:officer/cooldown
execute if entity @s run function hunter:officer/refresh

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:officer=true},tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] if score .rightClick enderEye matches 0 run function hunter:officer/ability_directory
execute if entity @s[advancements={hunter:officer=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:officer=true}] run advancement revoke @s only hunter:officer


#nightstick melee
	execute if score @s[tag=!timeStoppee] swapstickDuration matches 1.. run function hunter:officer/swapstick/hit_active
	execute if entity @s[advancements={hunter:officer/damage_swapstick=true}] at @s run function hunter:officer/swapstick/hit

#orangutan cloth active
	execute if score @s[tag=!timeStoppee] orangutanClothDuration matches 1.. run function hunter:officer/orangutan_cloth/active
#dog whistle active
	execute if score @s[tag=!timeStoppee] dogWhistleDuration matches 1.. run function hunter:officer/dog_whistle/active
#dog damage active
	execute if score @s[tag=!timeStoppee] dogDamageDuration matches 1.. run function hunter:officer/dog_damage/active