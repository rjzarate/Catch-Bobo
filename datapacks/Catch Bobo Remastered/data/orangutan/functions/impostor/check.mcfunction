execute if score @s droppedEnderEye matches 1.. run function orangutan:impostor/ability_swap/item_check


execute if entity @s[tag=!timeStoppee] run function orangutan:impostor/cooldown
execute if entity @s run function orangutan:impostor/refresh

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={orangutan:impostor=true},tag=!timeStoppee] if score .rightClick enderEye matches 0 run function orangutan:impostor/ability_directory
execute if entity @s[advancements={orangutan:impostor=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={orangutan:impostor=true}] run advancement revoke @s only orangutan:impostor


#holding vent
	execute if score %10t universalTimer matches 0 if predicate orangutan:impostor/vent run function orangutan:impostor/vent/holding/check
#holding create vent
	execute if score %10t universalTimer matches 0 if predicate orangutan:impostor/create_vent run function orangutan:impostor/create_vent/holding/directory

#report body charge up and active
	execute if score @s[tag=!timeStoppee] reportBodyDuration matches 1.. run function orangutan:impostor/report_body/active
	execute if score @s[tag=!timeStoppee] reportBodyChargeUp matches 1.. at @s run function orangutan:impostor/report_body/charge_up

#sabotage charge up and active
	execute if score @s[tag=!timeStoppee] sabotageDuration matches 1.. run function orangutan:impostor/sabotage/active
	execute if score @s[tag=!timeStoppee] sabotageChargeUp matches 1.. run function orangutan:impostor/sabotage/charge_up