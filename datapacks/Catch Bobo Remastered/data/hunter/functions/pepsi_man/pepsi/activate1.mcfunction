scoreboard players operation @s pepsiCD = .cooldown20t pepsiStats
scoreboard players operation @s pepsiCD += .duration20t pepsiStats
scoreboard players operation @s pepsiDuration = .duration20t pepsiStats
scoreboard players operation @s speed3 = @s speed3
scoreboard players operation @s jumpBoost5 = @s jumpBoost5
scoreboard players operation @s resistance1 = @s resistance1
execute if score @s speed3 < .speed320t pepsiStats run scoreboard players operation @s speed3 = .speed320t pepsiStats
execute if score @s jumpBoost5 < .jumpBoost520t pepsiStats run scoreboard players operation @s jumpBoost5 = .jumpBoost520t pepsiStats
execute if score @s resistance1 < .resistance120t pepsiStats run scoreboard players operation @s resistance1 = .resistance120t pepsiStats
attribute @s minecraft:generic.attack_damage modifier add 1-0-2-2-1 pepsi_man_pepsi_knockback_resistance 1 add

execute at @s run playsound minecraft:block.bubble_column.whirlpool_inside player @a ~ ~ ~ 2.5 1.5