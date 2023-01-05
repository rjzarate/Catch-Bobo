scoreboard players remove @s pepsiPunchOrangutanDuration 1
execute if score @s pepsiPunchOrangutanDuration matches ..0 run attribute @s minecraft:generic.attack_speed modifier remove 1-0-2-1-1
execute if score @s pepsiPunchOrangutanDuration matches ..0 run attribute @s minecraft:generic.attack_damage modifier remove 1-0-2-1-2
execute if score @s pepsiPunchOrangutanDuration matches 1 at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.75
execute if score @s pepsiPunchOrangutanDuration matches ..0 unless score @s pepsiPunchHunterDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 2
execute if score @s pepsiPunchOrangutanDuration matches ..0 if score @s pepsiPunchHunterDuration matches ..0 run scoreboard players set @s pepsiPunchKnockback 3
execute if score @s pepsiPunchOrangutanDuration matches ..0 run scoreboard players reset @s pepsiPunchOrangutanDuration

execute if score @s pepsiPunchHunterDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 1