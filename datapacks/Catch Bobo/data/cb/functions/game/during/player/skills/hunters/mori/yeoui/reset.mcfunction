scoreboard players add @s yeoui 1
execute if score @s switchMode matches 0 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 run scoreboard players add @s yeouiCD 10

execute if score @s switchMode matches 1 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 run scoreboard players add @s yeouiCD 15

execute unless score @s yongpyoCD matches 120.. run scoreboard players add @s yeouiCD 15

execute if score @s yongpyoCD matches 120.. if score @s yongpyo matches 1 run scoreboard players add @s yeouiCD 15