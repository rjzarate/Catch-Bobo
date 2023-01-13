execute if score @s droppedEnderEye matches 1.. run function hunter:hacker/ability_swap/item_check

execute if entity @s[tag=!timeStoppee,tag=!impostorStun] run function hunter:hacker/cooldown

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:hacker=true},tag=!timeStoppee,tag=!impostorStun] if score .rightClick enderEye matches 0 run function hunter:hacker/ability_directory
execute if entity @s[advancements={hunter:hacker=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:hacker=true}] run advancement revoke @s only hunter:hacker

#trojan horse crossbow activation
	#reload
		execute if predicate hunter:hacker/trojan_horse if score @s[advancements={hunter:hacker/crossbow=false}] battery >= .trojanHorseBatteryUsage hackerStats run item modify entity @s weapon.mainhand kit:crossbow/air
	execute if entity @s[advancements={hunter:hacker/crossbow=true},tag=!impostorStun] if score @s battery >= .trojanHorseBatteryUsage hackerStats run function hunter:hacker/trojan_horse/activate
	execute if entity @s[advancements={hunter:hacker/crossbow=true}] run advancement revoke @s only hunter:hacker/crossbow


#rootkit active
execute if score @s[tag=!timeStoppee] rootkitDuration matches 1.. run function hunter:hacker/rootkit/active

#spyware active
execute if score @s[tag=!timeStoppee] spywareDuration matches 1.. run function hunter:hacker/spyware/active