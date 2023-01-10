execute if predicate hunter:jotaro/time_stop run scoreboard players operation chargeUp actionbarCD = @s timeStopChargeUp
execute if predicate hunter:jotaro/time_stop run scoreboard players operation duration actionbarCD = number timeStopDuration
execute if predicate hunter:jotaro/time_stop run scoreboard players operation int actionbarCD = @s timeStopCD

execute if predicate hunter:pepsi_man/pepsi run scoreboard players operation chargeUp actionbarCD = @s pepsiChargeUp
execute if predicate hunter:pepsi_man/pepsi run scoreboard players operation duration actionbarCD = @s pepsiDuration
execute if predicate hunter:pepsi_man/pepsi run scoreboard players operation int actionbarCD = @s pepsiCD

execute if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = duration actionbarCD
execute if score chargeUp actionbarCD matches 1.. run scoreboard players operation int actionbarCD = chargeUp actionbarCD
execute if predicate hunter:jotaro/time_stop if score duration actionbarCD matches 1.. if entity @s[tag=timeStopper] run scoreboard players operation int actionbarCD = duration actionbarCD
scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score chargeUp actionbarCD matches 1.. run title @s actionbar ["",{"text":"Charge Up ","bold":false,"italic":true,"color":"aqua"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless score chargeUp actionbarCD matches 1.. unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]