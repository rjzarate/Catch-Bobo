execute if entity @s[tag=!timeStoppee,tag=!impostorStun] run function hunter:jett/cooldown
execute if entity @s run function hunter:jett/refresh


##blade storm equip time
	#checks if holding the blad storm in the mainhand
execute if predicate hunter:jett/blade_storm run scoreboard players add @s bladeStormEquip 1
execute unless predicate hunter:jett/blade_storm run scoreboard players reset @s bladeStormEquip


#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:jett=true},tag=!timeStoppee,tag=!impostorStun] if score .rightClick enderEye matches 0 run function hunter:jett/ability_directory
execute if entity @s[advancements={hunter:jett=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:jett=true}] run advancement revoke @s only hunter:jett


##marshal
	#checks if holding the marshal in the mainhand equip time
execute if predicate hunter:jett/marshal run scoreboard players add @s marshalEquip 1
execute unless predicate hunter:jett/marshal run scoreboard players reset @s marshalEquip
	#checks if still holding down right-click on marshal
scoreboard players operation .rightClick marshalRightClick = @s marshalRightClick
	#when marshal is not held down anymore
execute if entity @s[advancements={hunter:jett/marshal=false}] if score @s marshalRightClick matches 1 if score @s marshalAmmo matches 1.. run function hunter:jett/marshal/check
scoreboard players set @s marshalRightClick 0
	#adds to scope time
execute if entity @s[advancements={hunter:jett/marshal=true},tag=!timeStoppee,tag=!impostorStun] run function hunter:jett/marshal/scope
	#for right-click detection
execute if entity @s[advancements={hunter:jett/marshal=true}] run scoreboard players set @s marshalRightClick 1
execute if entity @s[advancements={hunter:jett/marshal=true}] run advancement revoke @s only hunter:jett/marshal

#crossbow activation
	#reload
		execute if predicate hunter:jett/blade_storm if score @s[advancements={hunter:jett/crossbow=false}] bladeStormAmmo matches 1.. run item modify entity @s weapon.mainhand kit:crossbow/air
	execute if entity @s[advancements={hunter:jett/crossbow=true},tag=!impostorStun] if score @s bladeStormAmmo matches 1.. if score @s bladeStormEquip >= .equipTime20t bladeStormStats run function hunter:jett/blade_storm/activate
	execute if entity @s[advancements={hunter:jett/crossbow=true}] run advancement revoke @s only hunter:jett/crossbow


#tailwind
execute if score @s[tag=!timeStoppee] tailwindDuration matches 1.. run function hunter:jett/tailwind/active

#updraft
execute if score @s[tag=!timeStoppee] updraftDuration matches 1.. run function hunter:jett/updraft/active

#when she crouches she gets slow falling
execute if predicate general:is_sneaking unless predicate general:on_ground unless score @s slowFalling matches 3.. run scoreboard players set @s slowFalling 2