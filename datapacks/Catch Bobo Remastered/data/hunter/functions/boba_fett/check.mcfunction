execute if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] run function hunter:boba_fett/cooldown
execute if entity @s run function hunter:boba_fett/refresh
execute if entity @s[tag=!timeStoppee] run function hunter:boba_fett/fire_rate

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:boba_fett=true},tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] if score .rightClick enderEye matches 0 run function hunter:boba_fett/ability_directory
#auto ender eye for ee-3 and flamethrower
execute if entity @s[advancements={hunter:boba_fett=true},tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] if predicate hunter:boba_fett/auto run function hunter:boba_fett/ability_directory1
	#flamethrower charge delay if not holding down
	execute if entity @s[advancements={hunter:boba_fett=false},tag=!timeStoppee] run scoreboard players reset @s[scores={flamethrowerChargeDelay=1..}] flamethrowerChargeDelay
execute if entity @s[advancements={hunter:boba_fett=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:boba_fett=true}] run advancement revoke @s only hunter:boba_fett

#ee-3 burst fire; resets burst fire if switching hotbars
execute if predicate hunter:boba_fett/ee-3 if score @s[tag=!timeStoppee] ee-3Burst matches 1.. unless score @s ee-3BurstFireRate matches 1.. run function hunter:boba_fett/ee-3/burst_fire
execute unless predicate hunter:boba_fett/ee-3 if score @s[tag=!timeStoppee] ee-3Burst matches 1.. run scoreboard players reset @s ee-3Burst


#flamethrower charge delay also gets remove if not holding flamethrower or flying
		execute if score @s flamethrowerChargeDelay matches 1.. unless predicate hunter:boba_fett/flamethrower run scoreboard players reset @s flamethrowerChargeDelay
		execute if score @s flamethrowerChargeDelay matches 1.. if predicate general:fall_flying run scoreboard players reset @s flamethrowerChargeDelay


#rocket barrage burst fire
execute if score @s[tag=!timeStoppee] rocketBarrageBurst matches 1.. unless score @s rocketBarrageBurstFireRate matches 1.. run function hunter:boba_fett/rocket_barrage/burst_activate

#jetpack fuel used
execute if score @s jetpackFuelUsed matches 1.. run function hunter:boba_fett/jetpack_fuel/activate
execute store success score #hasJetpackFuel temp run clear @s minecraft:firework_rocket{Tags:["jetpackFuel"]} 0
execute if score @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] jetpackFuelAmmo matches 1.. if score #hasJetpackFuel temp matches 0 run function hunter:boba_fett/jetpack_fuel/give

#elytra
execute if predicate general:fall_flying if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] run function hunter:boba_fett/jetpack_fuel/flying
execute unless predicate general:fall_flying if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] run function hunter:boba_fett/jetpack_fuel/not_flying
