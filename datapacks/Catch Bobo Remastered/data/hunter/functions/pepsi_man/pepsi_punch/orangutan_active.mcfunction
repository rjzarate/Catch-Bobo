scoreboard players remove @s pepsiPunchOrangutanDuration 1

execute if score @s pepsiPunchOrangutanDuration matches ..0 run function hunter:pepsi_man/pepsi_punch/orangutan_deactivate

execute if score @s pepsiPunchHunterDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 1