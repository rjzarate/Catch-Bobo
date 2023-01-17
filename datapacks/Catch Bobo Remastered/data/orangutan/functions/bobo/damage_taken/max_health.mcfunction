execute store result score #temp cw_hp_old run attribute @s minecraft:generic.max_health base get
scoreboard players remove #temp cw_hp_old 2
execute unless score #temp cw_hp_old matches ..20 run function cw_hp_control:set_hp/l3_i0

scoreboard players operation @s boboDamageTaken -= .boboPermanentDamage gameStats