scoreboard players add .preset gameStats 1
execute if score .preset gameStats matches 4.. run scoreboard players set .preset gameStats 1

execute if score .preset gameStats matches 1 run function game:preset/1regular
execute if score .preset gameStats matches 2 run function game:preset/2no_glow
execute if score .preset gameStats matches 3 run function game:preset/3rapid