scoreboard players operation battery actionbarCD = @s battery
scoreboard players operation int actionbarCD = battery actionbarCD
scoreboard players operation dec actionbarCD = battery actionbarCD
execute store result score batteryUsage actionbarCD run data get entity @s SelectedItem.tag.batteryUsage
scoreboard players operation batteryUsageInt actionbarCD = batteryUsage actionbarCD


scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant
scoreboard players operation batteryUsage actionbarCD *= #20 constant

execute unless score battery actionbarCD matches 2000.. if score battery actionbarCD < batteryUsage actionbarCD run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"Battery: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":".","italic":true,"color":"#55C8C8"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/100","italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Battery Usage: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"batteryUsageInt","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute unless score battery actionbarCD matches 2000.. if score battery actionbarCD >= batteryUsage actionbarCD run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Battery: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":".","italic":true,"color":"#55C8C8"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/100","italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Battery Usage: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"batteryUsageInt","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute if score battery actionbarCD matches 2000.. run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Battery: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"dark_green"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/100","italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Battery Usage: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"batteryUsageInt","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]