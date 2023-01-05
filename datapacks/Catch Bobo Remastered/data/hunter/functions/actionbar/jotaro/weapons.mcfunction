scoreboard players operation int1 actionbarCD = @s starPlatinumPunchDuration
scoreboard players operation int2 actionbarCD = @s starPlatinumUppercutDuration


scoreboard players operation dec1 actionbarCD = int1 actionbarCD
scoreboard players operation num1 actionbarCD = int1 actionbarCD
scoreboard players operation dec2 actionbarCD = int2 actionbarCD
scoreboard players operation num2 actionbarCD = int2 actionbarCD
scoreboard players operation int1 actionbarCD /= #20 constant
scoreboard players operation dec1 actionbarCD %= #20 constant
scoreboard players operation dec1 actionbarCD /= #2 constant
scoreboard players operation int2 actionbarCD /= #20 constant
scoreboard players operation dec2 actionbarCD %= #20 constant
scoreboard players operation dec2 actionbarCD /= #2 constant



execute if score num1 actionbarCD matches ..0 if score num2 actionbarCD matches ..0 run title @s actionbar ["",{"text":"Atk Speed: ","bold":true,"color":"dark_red"},{"text":"\u2b24 ","color":"red"},{"text":"| ","bold":true},{"text":"Damage: ","bold":true,"color":"dark_red"},{"text":"\u2b24","color":"red"}]

execute if score num1 actionbarCD matches 1.. if score num2 actionbarCD matches ..0 run title @s actionbar ["",{"text":"Atk Speed: ","bold":true,"color":"dark_red"},{"text":"\u2b24 ","color":"green"},{"text":"(","italic":true,"color":"#821800"},{"score":{"name":"int1","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":".","italic":true,"color":"#821800"},{"score":{"name":"dec1","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":") ","italic":true,"color":"#821800"},{"text":"| ","bold":true},{"text":"Damage: ","bold":true,"color":"dark_red"},{"text":"\u2b24","color":"red"}]
execute if score num1 actionbarCD matches ..0 if score num2 actionbarCD matches 1.. run title @s actionbar ["",{"text":"Atk Speed: ","bold":true,"color":"dark_red"},{"text":"\u2b24 ","color":"red"},{"text":"| ","bold":true},{"text":"Damage: ","bold":true,"color":"dark_red"},{"text":"\u2b24 ","color":"green"},{"text":"(","italic":true,"color":"#821800"},{"score":{"name":"int2","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":".","italic":true,"color":"#821800"},{"score":{"name":"dec2","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":")","italic":true,"color":"#821800"}]



execute if score num1 actionbarCD matches 1.. if score num2 actionbarCD matches 1.. run title @s actionbar ["",{"text":"Atk Speed: ","bold":true,"color":"dark_red"},{"text":"\u2b24 ","color":"green"},{"text":"(","italic":true,"color":"#821800"},{"score":{"name":"int1","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":".","italic":true,"color":"#821800"},{"score":{"name":"dec1","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":") ","italic":true,"color":"#821800"},{"text":"| ","bold":true},{"text":"Damage: ","bold":true,"color":"dark_red"},{"text":"\u2b24 ","color":"green"},{"text":"(","italic":true,"color":"#821800"},{"score":{"name":"int2","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":".","italic":true,"color":"#821800"},{"score":{"name":"dec2","objective":"actionbarCD"},"italic":true,"color":"#821800"},{"text":")","italic":true,"color":"#821800"}]