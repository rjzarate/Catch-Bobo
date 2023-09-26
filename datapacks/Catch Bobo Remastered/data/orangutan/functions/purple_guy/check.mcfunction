execute if entity @s[tag=!timeStoppee,tag=!displayOnly,tag=!adwared] run function orangutan:purple_guy/cooldown
execute if entity @s run function orangutan:purple_guy/refresh

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={orangutan:purple_guy=true},tag=!timeStoppee,tag=!displayOnly] if score .rightClick enderEye matches 0 run function orangutan:purple_guy/ability_directory
execute if entity @s[advancements={orangutan:purple_guy=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={orangutan:purple_guy=true}] run advancement revoke @s only orangutan:purple_guy

#dealt damage with melee weapon; checks if 0 ammo to remove fire aspect
	execute if entity @s[advancements={orangutan:purple_guy/damage_melee=true}] run function orangutan:purple_guy/melee/hit

#quirky animatronics and flaming corruption
	execute if score @s[tag=!springtrap,tag=!timeStoppee] quirkyAnimatronicsFlamingCorruptionDuration matches 1.. run function orangutan:purple_guy/quirky_animatronics/active
	execute if score @s[tag=springtrap,tag=!timeStoppee] quirkyAnimatronicsFlamingCorruptionDuration matches 1.. run function orangutan:purple_guy/flaming_corruption/active

#transform into purple_guy/springtrap
	execute unless score @s[tag=!timeStoppee] purpleGuyTransformChargeUp matches 1.. run function orangutan:purple_guy/transform/directory
	scoreboard players remove @s purpleGuyTransformChargeUp 1

#holding bobo finder
	execute if score %10t universalTimer matches 0 if predicate orangutan:general/bobo_finder at @s run function orangutan:general/bobo_finder/activate