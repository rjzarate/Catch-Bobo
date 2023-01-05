scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:marker,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s

scoreboard players reset @s geundoowunDuration