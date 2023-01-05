scoreboard players set #thornDamage temp 0
execute if score .damage stats matches 1.. if score @s[type=minecraft:player] strength1 matches 1.. run scoreboard players set #thornDamage temp 1
execute if score .damage stats matches 1.. if score @s[type=minecraft:player] strength2 matches 1.. run scoreboard players set #thornDamage temp 2
execute if score .damage stats matches 1.. if score @s[type=minecraft:player] strength3 matches 1.. run scoreboard players set #thornDamage temp 3
execute if score .damage stats matches 1.. if score @s[type=minecraft:player] strength4 matches 1.. run scoreboard players set #thornDamage temp 4
execute if score .damage stats matches 1.. if score @s[type=minecraft:player] strength5 matches 1.. run scoreboard players set #thornDamage temp 5
execute if score .damage stats matches 1.. run scoreboard players operation #damage temp += #thornDamage temp


scoreboard players set #rangeDamage temp 0
execute if score .rangeDamage stats matches 1.. if score @s[type=minecraft:player] strength1 matches 1.. run scoreboard players set #rangeDamage temp 2
execute if score .rangeDamage stats matches 1.. if score @s[type=minecraft:player] strength2 matches 1.. run scoreboard players set #rangeDamage temp 4
execute if score .rangeDamage stats matches 1.. if score @s[type=minecraft:player] strength3 matches 1.. run scoreboard players set #rangeDamage temp 6
execute if score .rangeDamage stats matches 1.. if score @s[type=minecraft:player] strength4 matches 1.. run scoreboard players set #rangeDamage temp 8
execute if score .rangeDamage stats matches 1.. if score @s[type=minecraft:player] strength5 matches 1.. run scoreboard players set #rangeDamage temp 10
execute if score .rangeDamage stats matches 1.. run scoreboard players operation #damage temp += #rangeDamage temp


scoreboard players set #weaknessDamage temp 0
execute if score @s[type=minecraft:player] weakness1 matches 1.. run scoreboard players set #weaknessDamage temp 4
execute if score @s[type=minecraft:player] weakness2 matches 1.. run scoreboard players set #weaknessDamage temp 8
execute if score @s[type=minecraft:player] weakness3 matches 1.. run scoreboard players set #weaknessDamage temp 12
execute if score @s[type=minecraft:player] weakness4 matches 1.. run scoreboard players set #weaknessDamage temp 16
execute if score @s[type=minecraft:player] weakness5 matches 1.. run scoreboard players set #weaknessDamage temp 20
scoreboard players operation #damage temp -= #weaknessDamage temp

execute if score @s[type=minecraft:player] weakness100 matches 1.. run scoreboard players set #damage temp 0
