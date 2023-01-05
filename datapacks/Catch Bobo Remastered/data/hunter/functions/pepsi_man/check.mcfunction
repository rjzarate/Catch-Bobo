execute if entity @s[tag=!timeStoppee,tag=!impostorStun] run function hunter:pepsi_man/cooldown
execute if entity @s run function hunter:pepsi_man/refresh

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:pepsi_man=true},tag=!timeStoppee,tag=!impostorStun] if score .rightClick enderEye matches 0 run function hunter:pepsi_man/ability_directory
execute if entity @s[advancements={hunter:pepsi_man=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:pepsi_man=true}] run advancement revoke @s only hunter:pepsi_man


#pepsi man pepsi punch
execute if score @s[tag=!timeStoppee] pepsiPunchHunterDuration matches 1.. run function hunter:pepsi_man/pepsi_punch/hunter_active
execute if score @s[tag=!timeStoppee] pepsiPunchOrangutanDuration matches 1.. run function hunter:pepsi_man/pepsi_punch/orangutan_active
execute if entity @s[advancements={hunter:pepsi_man/damage_hunter=true}] run function hunter:pepsi_man/pepsi_punch/hunter
execute if entity @s[advancements={hunter:pepsi_man/damage_orangutan=true}] run function hunter:pepsi_man/pepsi_punch/orangutan
execute if predicate hunter:pepsi_man/pepsi_punch store result score #temp pepsiPunchKnockback run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute if predicate hunter:pepsi_man/pepsi_punch unless score @s pepsiPunchKnockback = #temp pepsiPunchKnockback run function hunter:pepsi_man/pepsi_punch/knockback

#pepsi man pepsi splash active
execute if score @s[tag=!timeStoppee] pepsiSplashDuration matches 1.. run function hunter:pepsi_man/pepsi_splash/active

#pepsi man pepsi active & charge up
execute if score @s[tag=!timeStoppee] pepsiDuration matches 1.. run function hunter:pepsi_man/pepsi/active
execute if score @s[tag=!timeStoppee] pepsiChargeUp matches 1.. run function hunter:pepsi_man/pepsi/charge_up