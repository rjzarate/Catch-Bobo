#audio
execute if score @s pepsiChargeUp matches 200 at @s run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 2.5 1.25
execute if score @s pepsiChargeUp matches 125 at @s run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 2.5 1.5
execute if score @s pepsiChargeUp matches 50 at @s run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 2.5 2

#visual
scoreboard players operation #1s pepsiChargeUp = @s pepsiChargeUp
scoreboard players operation #1s pepsiChargeUp %= #20 constant
execute if score @s pepsiChargeUp matches ..200 if score #1s pepsiChargeUp matches 0..4 at @s anchored eyes run particle minecraft:scrape ^ ^ ^ 0.2 0.2 0.2 20 1 normal
execute if score @s pepsiChargeUp matches ..124 if score #1s pepsiChargeUp matches 5..9 at @s anchored eyes run particle minecraft:scrape ^ ^ ^ 0.2 0.2 0.2 20 1 normal
execute if score @s pepsiChargeUp matches ..50 if score #1s pepsiChargeUp matches 10..19 at @s anchored eyes run particle minecraft:scrape ^ ^ ^ 0.2 0.2 0.2 20 1 normal

scoreboard players remove @s pepsiChargeUp 1
execute if score @s pepsiChargeUp matches ..0 run function hunter:pepsi_man/pepsi/activate1