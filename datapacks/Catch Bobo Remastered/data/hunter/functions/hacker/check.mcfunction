execute if score @s droppedEnderEye matches 1.. run function hunter:hacker/ability_swap/item_check

execute if entity @s[tag=!timeStoppee,tag=!impostorStun] run function hunter:hacker/cooldown

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:hacker=true},tag=!timeStoppee,tag=!impostorStun] if score .rightClick enderEye matches 0 run function hunter:hacker/ability_directory
execute if entity @s[advancements={hunter:hacker=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:hacker=true}] run advancement revoke @s only hunter:hacker

