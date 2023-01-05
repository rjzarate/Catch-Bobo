scoreboard players remove @s geundoowunDebuff 1999

scoreboard players operation #geundoowunDebuff temp = @s geundoowunDebuff

execute if score #geundoowunDebuff temp matches 100..199 unless score @s miningFatigue1 matches 2.. run scoreboard players set @s miningFatigue1 2
execute if score #geundoowunDebuff temp matches 200..299 unless score @s miningFatigue2 matches 2.. run scoreboard players set @s miningFatigue2 2
execute if score #geundoowunDebuff temp matches 300..399 unless score @s miningFatigue3 matches 2.. run scoreboard players set @s miningFatigue3 2
execute if score #geundoowunDebuff temp matches 400..499 unless score @s miningFatigue4 matches 2.. run scoreboard players set @s miningFatigue4 2
execute if score #geundoowunDebuff temp matches 500.. unless score @s miningFatigue5 matches 2.. run scoreboard players set @s miningFatigue5 2

scoreboard players operation #geundoowunDebuff% temp = #geundoowunDebuff temp
scoreboard players operation #geundoowunDebuff% temp %= #100 constant
execute if score #geundoowunDebuff% temp matches 0 if score #geundoowunDebuff temp matches 100..500 at @s run playsound minecraft:item.trident.hit_ground player @a ~ ~ ~ 0.75 0

execute if score @s geundoowunDebuff matches ..0 run scoreboard players reset @s geundoowunDebuff