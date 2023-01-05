scoreboard players operation @s randomN *= constant lcg
scoreboard players add @s randomN 12345
scoreboard players operation @s randomOutcome = @s randomN

scoreboard players operation @s randomT = @s randomOutcome
scoreboard players operation @s randomOutcome %= constant randomR
scoreboard players operation @s randomT -= @s randomOutcome
scoreboard players operation @s randomT += constant randomM
execute if score @s randomT matches ..-1 run function math:random/check