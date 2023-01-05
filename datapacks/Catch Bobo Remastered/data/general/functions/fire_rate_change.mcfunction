#mining fatigue
scoreboard players set #fireRateChange stats 10
execute if score #fireRateChange stats matches 10 if score @s miningFatigue5 matches 1.. run scoreboard players set #fireRateChange stats 20
execute if score #fireRateChange stats matches 10 if score @s miningFatigue4 matches 1.. run scoreboard players set #fireRateChange stats 18
execute if score #fireRateChange stats matches 10 if score @s miningFatigue3 matches 1.. run scoreboard players set #fireRateChange stats 16
execute if score #fireRateChange stats matches 10 if score @s miningFatigue2 matches 1.. run scoreboard players set #fireRateChange stats 14
execute if score #fireRateChange stats matches 10 if score @s miningFatigue1 matches 1.. run scoreboard players set #fireRateChange stats 12
scoreboard players operation #fireRate stats *= #fireRateChange stats
#haste
scoreboard players set #fireRateChange stats 10
execute if score #fireRateChange stats matches 10 if score @s haste5 matches 1.. run scoreboard players set #fireRateChange stats 15
execute if score #fireRateChange stats matches 10 if score @s haste4 matches 1.. run scoreboard players set #fireRateChange stats 14
execute if score #fireRateChange stats matches 10 if score @s haste3 matches 1.. run scoreboard players set #fireRateChange stats 13
execute if score #fireRateChange stats matches 10 if score @s haste2 matches 1.. run scoreboard players set #fireRateChange stats 12
execute if score #fireRateChange stats matches 10 if score @s haste1 matches 1.. run scoreboard players set #fireRateChange stats 11
scoreboard players operation #fireRate stats /= #fireRateChange stats
