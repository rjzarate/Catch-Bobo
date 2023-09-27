scoreboard players remove @s yongpyoDuration 1

#for the cd reduction
execute if score @s yongpyoPowerOrAcceleration matches 1 run scoreboard players operation #temp temp = @s yongpyoDuration
execute if score @s yongpyoPowerOrAcceleration matches 1 run scoreboard players operation #temp temp %= #4 constant
execute if score @s yongpyoPowerOrAcceleration matches 1 if score #temp temp matches 0 run function hunter:mori/cooldown

execute if score @s yongpyoDuration matches ..0 run function hunter:mori/yongpyo/deactivate
execute if score @s yongpyoDuration matches ..0 run scoreboard players reset @s yongpyoDuration