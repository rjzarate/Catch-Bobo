#audio
execute if score @s noeseonChargeUp matches 200 run scoreboard players operation #uuid temp = @s uuid
execute if score @s noeseonChargeUp matches 200 as @e[type=minecraft:marker,tag=geundoowun,tag=noeseon] if score @s uuidLink = #uuid temp at @s run playsound minecraft:entity.lightning_bolt.thunder weather @a ~-40 150 ~-40 9 0.5
execute if score @s noeseonChargeUp matches 50 run scoreboard players operation #uuid temp = @s uuid
execute if score @s noeseonChargeUp matches 50 as @e[type=minecraft:marker,tag=geundoowun,tag=noeseon] if score @s uuidLink = #uuid temp at @s run playsound minecraft:entity.lightning_bolt.thunder weather @a ~-40 150 ~-40 9 0.0

execute if score @s noeseonChargeUp matches 1.. unless score @s geundoowunDuration matches 1.. run function hunter:mori/noeseon/deactivate
scoreboard players remove @s noeseonChargeUp 1
execute if score @s noeseonChargeUp matches ..0 run function hunter:mori/noeseon/activate1