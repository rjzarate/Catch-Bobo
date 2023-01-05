scoreboard players remove @s yongpyoDuration 1
execute if score @s yongpyoDuration matches ..0 run function hunter:mori/yongpyo/deactivate
execute if score @s yongpyoDuration matches ..0 run scoreboard players reset @s yongpyoDuration