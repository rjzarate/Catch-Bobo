scoreboard players reset @s noeseonChargeUp
scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run team join noCollide @s
execute as @e[type=minecraft:marker,tag=geundoowun,tag=noeseon] if score @s uuidLink = #uuid temp at @s run playsound minecraft:item.trident.throw weather @a ~-40 150 ~-40 9 0
execute as @e[type=minecraft:marker,tag=geundoowun,tag=noeseon] if score @s uuidLink = #uuid temp run tag @s remove noeseon