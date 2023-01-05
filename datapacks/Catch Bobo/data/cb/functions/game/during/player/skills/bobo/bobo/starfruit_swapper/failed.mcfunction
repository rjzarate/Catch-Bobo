execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.5 0
tellraw @s [{"text":"Failed to activate ","color":"red","bold":true,"italic":true},{"text":"Starfruit Swapper","color":"gold","bold":true,"italic":false},{"text":"."},{"text":"\nMust be on the ground to activate.","color":"red","bold":true,"italic":true}]
