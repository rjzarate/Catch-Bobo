execute store result score #horse temp run data get entity @s Rotation[0] 1000000

scoreboard players set in math 1
scoreboard players set in1 math 2
function math:rng/range
execute if score out math matches 1 run scoreboard players add #horse temp 100000000
execute if score out math matches 2 run scoreboard players remove #horse temp 100000000
execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get #horse temp