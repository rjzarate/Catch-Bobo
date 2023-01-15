execute if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] run function hunter:vaccinator/cooldown
execute if entity @s run function hunter:vaccinator/refresh

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:vaccinator=true},tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] if score .rightClick enderEye matches 0 run function hunter:vaccinator/ability_directory
execute if entity @s[advancements={hunter:vaccinator=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:vaccinator=true}] run advancement revoke @s only hunter:vaccinator

#shot bow
execute if entity @s[scores={syringeLauncherUsed=1..}] run function hunter:vaccinator/syringe_launcher/activate

#give arrow if they have enough ammo
execute if score @s syringeLauncherAmmo > @s overloadedBrewing if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] unless predicate hunter:vaccinator/syringe_launcher_offhand run function hunter:vaccinator/syringe_launcher/give
	#clears arrow if syringe on offhand
		execute if predicate hunter:vaccinator/syringe_launcher_offhand run clear @s minecraft:tipped_arrow{Tags:["syringe"]}

#self diagnose active
execute if score @s[tag=!timeStoppee] selfDiagnoseDuration matches 1.. run function hunter:vaccinator/self_diagnose/active

#unstable concoction active
execute if score @s[tag=!timeStoppee] unstableConcoctionDuration matches 1.. run function hunter:vaccinator/unstable_concoction/active