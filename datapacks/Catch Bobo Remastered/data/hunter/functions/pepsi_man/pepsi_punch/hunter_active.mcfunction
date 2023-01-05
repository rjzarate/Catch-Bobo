scoreboard players remove @s pepsiPunchHunterDuration 1
execute if score @s pepsiPunchHunterDuration matches ..0 run attribute @s minecraft:generic.attack_speed modifier remove 1-0-2-0-1
execute if score @s pepsiPunchHunterDuration matches ..0 run attribute @s minecraft:generic.attack_damage modifier remove 1-0-2-0-2
execute if score @s pepsiPunchHunterDuration matches ..0 unless score @s pepsiPunchOrangutanDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 2
execute if score @s pepsiPunchHunterDuration matches ..0 if score @s pepsiPunchOrangutanDuration matches ..0 run scoreboard players set @s pepsiPunchKnockback 0
execute if score @s pepsiPunchHunterDuration matches 1 at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.75
execute if score @s pepsiPunchHunterDuration matches ..0 run scoreboard players reset @s pepsiPunchHunterDuration

execute if score @s pepsiPunchOrangutanDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 1