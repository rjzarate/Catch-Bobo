scoreboard players remove @s pepsiPunchHunterDuration 1

execute if score @s pepsiPunchHunterDuration matches ..0 run function hunter:pepsi_man/pepsi_punch/hunter_deactivate

execute if score @s pepsiPunchHunterDuration matches 1.. run scoreboard players set @s pepsiPunchKnockback 1