execute if predicate orangutan:teemo/recall run scoreboard players operation duration actionbarCD = @s recallChargeUp
execute if predicate orangutan:teemo/recall run scoreboard players operation int actionbarCD = @s recallCD
execute if predicate orangutan:teemo/recall if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s recallChargeUp

execute if predicate orangutan:purple_guy/transform run scoreboard players operation duration actionbarCD = @s purpleGuyTransformChargeUp
execute if predicate orangutan:purple_guy/transform if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s purpleGuyTransformChargeUp

scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Charge Up ","bold":false,"italic":true,"color":"aqua"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]