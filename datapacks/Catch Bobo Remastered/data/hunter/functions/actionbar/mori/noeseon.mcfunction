scoreboard players operation chargeUp actionbarCD = @s noeseonChargeUp
scoreboard players operation duration actionbarCD = @s noeseonDuration
execute store result score int actionbarCD run scoreboard players get @s noeseonCD
scoreboard players operation int1 actionbarCD = @s geundoowunDuration

execute if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = duration actionbarCD
execute if score chargeUp actionbarCD matches 1.. run scoreboard players operation int actionbarCD = chargeUp actionbarCD
scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant
scoreboard players operation dec1 actionbarCD = int1 actionbarCD
scoreboard players operation int1 actionbarCD /= #20 constant
scoreboard players operation dec1 actionbarCD %= #20 constant
scoreboard players operation dec1 actionbarCD /= #2 constant



execute if score chargeUp actionbarCD matches 1.. run title @s actionbar ["",{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" | ","bold":true},{"text":"Charge Up ","bold":false,"italic":true,"color":"aqua"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" | ","bold":true},{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" | ","bold":true},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec1","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" | ","bold":true},{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]