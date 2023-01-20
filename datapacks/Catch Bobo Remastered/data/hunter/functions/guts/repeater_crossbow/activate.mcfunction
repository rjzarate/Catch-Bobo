scoreboard players add @s repeaterCrossbowChargeDelay 6
scoreboard players set @s[scores={repeaterCrossbowChargeDelay=26..}] repeaterCrossbowChargeDelay 25
scoreboard players add @s repeaterCrossbowFireRate 1
execute if score @s repeaterCrossbowChargeDelay >= .chargeDelay repeaterCrossbowStats run function hunter:guts/repeater_crossbow/summon