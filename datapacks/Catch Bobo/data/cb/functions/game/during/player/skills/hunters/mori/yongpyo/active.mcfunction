execute if score @s switchMode matches 0 run attribute @s minecraft:generic.attack_damage base set 0
execute if score @s switchMode matches 0 if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run attribute @s minecraft:generic.attack_damage base set 1
execute if score @s switchMode matches 0 run attribute @s minecraft:generic.movement_speed base set 0.120000001788139344
execute if score @s switchMode matches 0 if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run attribute @s minecraft:generic.movement_speed base set 0.130000001937150956
execute if score @s switchMode matches 0 run attribute @s minecraft:generic.attack_speed base set 4.25
execute if score @s switchMode matches 0 if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run attribute @s minecraft:generic.attack_speed base set 4.5
execute if score @s switchMode matches 0 if score @s yeoui matches 1 unless score @s yeouiCD matches ..10 run scoreboard players set @s yeouiCD 10

execute if score @s switchMode matches 1 run attribute @s minecraft:generic.attack_damage base set 3
execute if score @s switchMode matches 1 if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run attribute @s minecraft:generic.attack_damage base set 4
execute if score @s switchMode matches 1 run attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
execute if score @s switchMode matches 1 if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run attribute @s minecraft:generic.movement_speed base set 0.110000001639127732
execute if score @s switchMode matches 1 run attribute @s minecraft:generic.attack_speed base set 4
execute if score @s switchMode matches 1 if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run attribute @s minecraft:generic.attack_speed base set 4.25
execute if score @s switchMode matches 1 if score @s yeoui matches 1 if score @s yeouiCD matches ..10 run scoreboard players set @s yeouiCD 15


