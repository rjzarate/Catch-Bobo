execute store result score int actionbarCD run scoreboard players get @s selfDiagnoseCD
scoreboard players operation dec actionbarCD = @s selfDiagnoseCD
scoreboard players operation ammo actionbarCD = @s syringeLauncherAmmo
scoreboard players operation maxAmmo actionbarCD = .maxAmmo syringeLauncherStats
scoreboard players operation stacks actionbarCD = @s overloadedBrewing
scoreboard players operation duration actionbarCD = @s selfDiagnoseDuration
execute if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s selfDiagnoseDuration
execute if score duration actionbarCD matches 1.. run scoreboard players operation dec actionbarCD = @s selfDiagnoseDuration

scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD matches 0 run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"red"},{"text":"0/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD <= stacks actionbarCD unless score ammo actionbarCD matches 0 if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD <= stacks actionbarCD unless score ammo actionbarCD matches 0 if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD > stacks actionbarCD if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD > stacks actionbarCD if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score ammo actionbarCD = maxAmmo actionbarCD if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"dark_green"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":" "},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]