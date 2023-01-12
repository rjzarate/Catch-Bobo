execute if entity @s[tag=!timeStoppee,tag=!impostorStun] run function hunter:guts/cooldown
execute if entity @s run function hunter:guts/refresh
execute if entity @s[tag=!timeStoppee] run function hunter:guts/fire_rate

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:guts=true},tag=!timeStoppee,tag=!impostorStun] if score .rightClick enderEye matches 0 run function hunter:guts/ability_directory
execute if entity @s[advancements={hunter:guts=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:guts=true}] run advancement revoke @s only hunter:guts

#crossbow activation
execute if entity @s[advancements={hunter:guts/crossbow=true},tag=!impostorStun] unless predicate general:is_sneaking if score @s repeaterCrossbowAmmo matches 1.. unless score @s repeaterCrossbowFireRate matches 1.. run function hunter:guts/repeater_crossbow/activate
execute if entity @s[advancements={hunter:guts/crossbow=true},tag=!impostorStun] if predicate general:is_sneaking unless score @s cannonArmCD matches 1.. run function hunter:guts/cannon_arm/activate
execute if entity @s[advancements={hunter:guts/crossbow=true}] run advancement revoke @s only hunter:guts/crossbow

#crossbow reload
execute if predicate hunter:guts/left_arm0 unless predicate general:is_sneaking if score @s repeaterCrossbowAmmo matches 1.. unless score @s repeaterCrossbowFireRate matches 1.. run function hunter:guts/repeater_crossbow/reload
execute if predicate hunter:guts/left_arm0 if predicate general:is_sneaking unless score @s cannonArmCD matches 1.. run function hunter:guts/repeater_crossbow/reload


#crossbow animation
execute unless score @s leftArmModel matches 1100..1104 if predicate hunter:guts/left_arm unless predicate general:is_sneaking run function hunter:guts/repeater_crossbow/animate
execute unless score @s leftArmModel matches 1110 if predicate hunter:guts/left_arm if predicate general:is_sneaking run function hunter:guts/cannon_arm/animate

#guts dragonslayer
execute if score @s[tag=!timeStoppee] dragonslayerDuration matches 1.. run function hunter:guts/dragonslayer/active
execute if entity @s[advancements={hunter:guts/damage_dragonslayer=true}] run function hunter:guts/dragonslayer/hit

#indomitable will texture change (only if not in cd and active)
	execute if score %10t universalTimer matches 0 unless score @s[tag=!timeStoppee] indomitableWillCD matches 1.. unless score @s indomitableWillDuration matches 1.. run function hunter:guts/indomitable_will/animate

#indomitable will active
execute if score @s[tag=!timeStoppee] indomitableWillDuration matches 1.. at @s run function hunter:guts/indomitable_will/active
execute if score @s indomitableWillDuration matches 1.. at @s run function hunter:guts/indomitable_will/active1
execute if score @s[tag=!timeStoppee] berserkerArmorDuration matches 1.. at @s run function hunter:guts/berserker_armor/active