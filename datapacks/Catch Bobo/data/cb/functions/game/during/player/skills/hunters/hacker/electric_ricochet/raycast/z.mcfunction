scoreboard players set @s eRicochetR 18000
execute store result score @s eRicochetRT run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s eRicochetR -= @s eRicochetRT