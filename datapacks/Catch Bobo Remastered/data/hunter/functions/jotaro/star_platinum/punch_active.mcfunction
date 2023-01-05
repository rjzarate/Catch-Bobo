scoreboard players remove @s starPlatinumPunchDuration 1
execute if score @s starPlatinumPunchDuration matches ..0 run attribute @s minecraft:generic.attack_speed modifier remove 1-0-0-0-1
execute if score @s starPlatinumPunchDuration matches 1 at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.75
execute if score @s starPlatinumPunchDuration matches ..0 run scoreboard players reset @s starPlatinumPunchDuration