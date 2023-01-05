execute unless score @s weakness100 matches 2.. run scoreboard players set @s weakness100 2
execute unless score @s resistance5 matches 2.. run scoreboard players set @s resistance5 2

scoreboard players remove @s reportBodyDuration 1
execute if score @s reportBodyDuration matches ..0 run function orangutan:impostor/report_body/activate2
execute if score @s reportBodyDuration matches ..0 run scoreboard players reset @s reportBodyDuration