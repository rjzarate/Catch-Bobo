execute if score @s droppedEnderEye matches 1.. run function hunter:mori/ability_swap/item_check

execute if entity @s[tag=!timeStoppee,tag=!impostorStun] run function hunter:mori/cooldown
execute if entity @s run function hunter:mori/refresh

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={hunter:mori=true},tag=!timeStoppee,tag=!impostorStun] if score .rightClick enderEye matches 0 run function hunter:mori/ability_directory
execute if entity @s[advancements={hunter:mori=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={hunter:mori=true}] run advancement revoke @s only hunter:mori


#yeoui
execute if score @s[tag=!timeStoppee] yeouiDuration matches 1.. run function hunter:mori/yeoui/active
execute if entity @s[advancements={hunter:mori/damage_yeoui=true}] run function hunter:mori/yeoui/melee_hit


execute if score @s[tag=!timeStoppee] geundoowunDuration matches 1.. at @s run function hunter:mori/geundoowun/active
execute if score @s[tag=!timeStoppee] thunderBreakerDuration matches 1.. at @s run function hunter:mori/thunder_breaker/active
execute if score @s[tag=!timeStoppee] noeseonDuration matches 1.. at @s run function hunter:mori/noeseon/active
execute if score @s[tag=!timeStoppee] yongpyoDuration matches 1.. at @s run function hunter:mori/yongpyo/active


execute if score @s[tag=!timeStoppee] noeseonChargeUp matches 1.. run function hunter:mori/noeseon/charge_up