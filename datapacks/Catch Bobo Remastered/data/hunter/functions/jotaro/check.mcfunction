execute if entity @s[tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] run function hunter:jotaro/cooldown
execute if entity @s run function hunter:jotaro/refresh


#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:jotaro=true},tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly] if score .rightClick enderEye matches 0 run function hunter:jotaro/ability_directory
execute if entity @s[advancements={hunter:jotaro=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:jotaro=true}] run advancement revoke @s only hunter:jotaro

#jotaro melee
execute if score @s[tag=!timeStoppee] starPlatinumPunchDuration matches 1.. run function hunter:jotaro/star_platinum/punch_active
execute if score @s[tag=!timeStoppee] starPlatinumUppercutDuration matches 1.. run function hunter:jotaro/star_platinum/uppercut_active
execute if entity @s[advancements={hunter:jotaro/damage_punch=true}] at @s run function hunter:jotaro/star_platinum/punch
execute if entity @s[advancements={hunter:jotaro/damage_uppercut=true}] at @s run function hunter:jotaro/star_platinum/uppercut

#jotaro ora active
execute if score @s[tag=!timeStoppee] oraDuration matches 1.. run function hunter:jotaro/ora/active

execute if score @s timeStopChargeUp matches 1.. if entity @s[tag=!timeStoppee] run function hunter:jotaro/time_stop/charge_up