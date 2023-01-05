execute if predicate hunter:jett/marshal run scoreboard players operation int actionbarCD = @s marshalCD
execute if predicate hunter:jett/marshal run scoreboard players operation ammo actionbarCD = @s marshalAmmo
execute if predicate hunter:jett/marshal run scoreboard players operation maxAmmo actionbarCD = .maxAmmo marshalStats

execute if predicate hunter:jett/blade_storm run scoreboard players operation int actionbarCD = @s bladeStormCD
execute if predicate hunter:jett/blade_storm run scoreboard players operation ammo actionbarCD = @s bladeStormAmmo
execute if predicate hunter:jett/blade_storm run scoreboard players operation maxAmmo actionbarCD = .maxAmmo bladeStormStats

scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"red"},{"text":"0/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute if score ammo actionbarCD < maxAmmo actionbarCD unless score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute if score ammo actionbarCD = maxAmmo actionbarCD if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"dark_green"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]