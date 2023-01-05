##actionbar for guts
execute if predicate hunter:guts/left_arm unless predicate hunter:ender_eye unless predicate general:is_sneaking run function hunter:actionbar/guts/repeater_crossbow
execute if predicate hunter:guts/left_arm unless predicate hunter:ender_eye if predicate general:is_sneaking run function hunter:actionbar/guts/cannon_arm

##actionbar for jett weapons
execute if predicate hunter:jett/marshal run function hunter:actionbar/ammo

##actionbar for vaccinator weapon
execute if predicate hunter:vaccinator/syringe_launcher run function hunter:actionbar/vaccinator/syringe_launcher

##boba fett firework and jet pack
execute if entity @s[tag=bobaFett] unless predicate hunter:has_item run function hunter:actionbar/boba_fett/jetpack_fuel
execute if predicate hunter:boba_fett/jetpack_fuel run function hunter:actionbar/boba_fett/jetpack_fuel

execute if predicate hunter:ender_eye run function hunter:actionbar/directory



execute if entity @s[tag=bobaFett] run function hunter:boba_fett/check
execute if entity @s[tag=guts] run function hunter:guts/check
execute if entity @s[tag=hacker] run function hunter:hacker/check
execute if entity @s[tag=jett] run function hunter:jett/check
execute if entity @s[tag=jotaro] run function hunter:jotaro/check
execute if entity @s[tag=mori] run function hunter:mori/check
execute if entity @s[tag=officer] run function hunter:officer/check
execute if entity @s[tag=pepsiMan] run function hunter:pepsi_man/check
execute if entity @s[tag=vaccinator] run function hunter:vaccinator/check