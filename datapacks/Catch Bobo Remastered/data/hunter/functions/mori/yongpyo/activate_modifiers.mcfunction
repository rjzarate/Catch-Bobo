attribute @s minecraft:generic.attack_damage modifier remove 1-0-3-1-1
attribute @s minecraft:generic.attack_speed modifier remove 1-0-3-1-2
attribute @s minecraft:generic.movement_speed modifier remove 1-0-3-1-3

execute if score @s yongpyoPowerOrAcceleration matches 0 run attribute @s minecraft:generic.attack_damage modifier add 1-0-3-1-1 mori_yongpyo_attack_damage 2 add
execute if score @s yongpyoPowerOrAcceleration matches 1 run attribute @s minecraft:generic.attack_speed modifier add 1-0-3-1-2 mori_yongpyo_attack_speed 0.2 add
execute if score @s yongpyoPowerOrAcceleration matches 1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-3-1-3 mori_yongpyo_movement_speed 0.020000000298023224 add