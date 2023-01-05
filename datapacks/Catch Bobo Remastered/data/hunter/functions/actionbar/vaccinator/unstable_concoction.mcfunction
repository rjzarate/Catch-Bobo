scoreboard players operation duration actionbarCD = @s unstableConcoctionDuration
scoreboard players operation int actionbarCD = @s unstableConcoctionCD
scoreboard players operation dec actionbarCD = @s unstableConcoctionCD
execute if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s unstableConcoctionDuration
execute if score duration actionbarCD matches 1.. run scoreboard players operation dec actionbarCD = @s unstableConcoctionDuration
execute if score duration actionbarCD matches 1.. run scoreboard players operation multiplier actionbarCD = @s unstableConcoction

scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant
scoreboard players operation multiplier actionbarCD /= #20 constant

execute if score duration actionbarCD matches 1.. if score multiplier actionbarCD matches ..9 run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"text":"+x0.0","italic":true,"color":"#D1D1D1"},{"score":{"name":"multiplier","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"}]

execute if score duration actionbarCD matches 1.. if score multiplier actionbarCD matches 10..99 run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"text":"+x0.","italic":true,"color":"#D1D1D1"},{"score":{"name":"multiplier","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"}]
execute if score duration actionbarCD matches 1.. if score multiplier actionbarCD matches 100.. run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"text":"+x1.00","italic":true,"color":"#D1D1D1"}]

execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]