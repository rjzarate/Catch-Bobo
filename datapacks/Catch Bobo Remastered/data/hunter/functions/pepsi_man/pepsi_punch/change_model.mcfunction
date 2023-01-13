execute unless score @s pepsiPunchHunterDuration matches 1.. unless score @s pepsiPunchOrangutanDuration matches 1.. run data modify storage minecraft:animate CustomModelData set value 1700
execute if score @s pepsiPunchHunterDuration matches 1.. unless score @s pepsiPunchOrangutanDuration matches 1.. run data modify storage minecraft:animate CustomModelData set value 1701
execute unless score @s pepsiPunchHunterDuration matches 1.. if score @s pepsiPunchOrangutanDuration matches 1.. run data modify storage minecraft:animate CustomModelData set value 1702
execute if score @s pepsiPunchHunterDuration matches 1.. if score @s pepsiPunchOrangutanDuration matches 1.. run data modify storage minecraft:animate CustomModelData set value 1703

item modify entity @s weapon.mainhand kit:animate/storage