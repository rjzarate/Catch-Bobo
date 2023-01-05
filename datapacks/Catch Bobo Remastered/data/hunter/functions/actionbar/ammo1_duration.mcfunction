execute if predicate hunter:jett/tailwind run scoreboard players operation int actionbarCD = @s tailwindCD
execute if predicate hunter:jett/tailwind run scoreboard players operation ammo actionbarCD = @s tailwindAmmo
execute if predicate hunter:jett/tailwind run scoreboard players operation maxAmmo actionbarCD = .maxAmmo tailwindStats
execute if predicate hunter:jett/tailwind run scoreboard players operation duration actionbarCD = @s tailwindDuration
execute if predicate hunter:jett/tailwind if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s tailwindDuration
execute if predicate hunter:jett/tailwind if score duration actionbarCD matches 1.. run scoreboard players operation dec actionbarCD = @s tailwindDuration

execute if predicate hunter:jett/updraft run scoreboard players operation int actionbarCD = @s updraftCD
execute if predicate hunter:jett/updraft run scoreboard players operation ammo actionbarCD = @s updraftAmmo
execute if predicate hunter:jett/updraft run scoreboard players operation maxAmmo actionbarCD = .maxAmmo updraftStats
execute if predicate hunter:jett/updraft run scoreboard players operation duration actionbarCD = @s updraftDuration
execute if predicate hunter:jett/updraft if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s updraftDuration
execute if predicate hunter:jett/updraft if score duration actionbarCD matches 1.. run scoreboard players operation dec actionbarCD = @s updraftDuration

scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant


execute if score duration actionbarCD matches 1.. if score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Charges: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"red"},{"text":"0/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute if score duration actionbarCD matches 1.. if score ammo actionbarCD < maxAmmo actionbarCD unless score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"| ","bold":true},{"text":"Charges: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute if score duration actionbarCD matches 1.. if score ammo actionbarCD = maxAmmo actionbarCD if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Charges: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"dark_green"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]


execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"Charges: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"red"},{"text":"0/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD < maxAmmo actionbarCD unless score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Charges: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD = maxAmmo actionbarCD if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Charges: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"dark_green"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]

