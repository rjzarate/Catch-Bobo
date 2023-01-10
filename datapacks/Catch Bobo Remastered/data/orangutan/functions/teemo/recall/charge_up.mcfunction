execute unless predicate general:on_ground run function orangutan:teemo/recall/deactivate
execute if score @s recallCrossbow matches 1.. run function orangutan:teemo/recall/deactivate
execute if score @s moving matches 1.. if score @s recallChargeUp matches ..140 run function orangutan:teemo/recall/deactivate
execute if score @s recallDamage matches 1.. run function orangutan:teemo/recall/deactivate


execute if score @s recallChargeUp matches 160 at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 2 1
execute if score @s recallChargeUp matches 107 at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 2 1
execute if score @s recallChargeUp matches 53 at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 2 1

execute at @s anchored eyes run particle minecraft:nautilus ^ ^ ^ 0.2 0.2 0.2 20 1 normal

execute if score @s recallChargeUp matches 1.. run scoreboard players remove @s recallChargeUp 1
execute if score @s recallChargeUp matches ..0 run function orangutan:teemo/recall/activate1
