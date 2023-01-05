execute if score @s dDG matches 1.. run scoreboard players remove @s dDG 1
execute if score @s dDG matches ..0 run data modify entity @s Glowing set value 0b
execute if score @s dDG matches ..0 run scoreboard players reset @s dDG
