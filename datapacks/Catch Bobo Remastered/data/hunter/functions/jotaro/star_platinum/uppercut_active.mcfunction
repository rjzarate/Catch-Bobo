scoreboard players remove @s starPlatinumUppercutDuration 1
execute if score @s starPlatinumUppercutDuration matches ..0 run attribute @s minecraft:generic.attack_damage modifier remove 1-0-0-0-2
execute if score @s starPlatinumUppercutDuration matches 1 at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.75
execute if score @s starPlatinumUppercutDuration matches ..0 run scoreboard players reset @s starPlatinumUppercutDuration