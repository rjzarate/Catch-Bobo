execute if entity @s[tag=springtrap] unless score @s purpleGuyTransformChargeUp matches 1.. run function orangutan:purple_guy/transform/purple_guy
execute if entity @s[tag=!springtrap] unless score @s purpleGuyTransformChargeUp matches 1.. run function orangutan:purple_guy/transform/springtrap

execute if score @s quirkyAnimatronicsFlamingCorruptionDuration matches 1.. run scoreboard players set @s quirkyAnimatronicsFlamingCorruptionDuration 1

effect give @s minecraft:instant_health 1 100 true