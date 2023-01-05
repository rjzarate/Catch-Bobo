scoreboard players operation ammo actionbarCD = @s syringeLauncherAmmo
scoreboard players operation maxAmmo actionbarCD = .maxAmmo syringeLauncherStats
scoreboard players operation stacks actionbarCD = @s overloadedBrewing


execute if score ammo actionbarCD <= stacks actionbarCD run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"yellow"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"}]


execute if score ammo actionbarCD > stacks actionbarCD run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"Stacks: ","bold":true,"color":"white"},{"score":{"name":"stacks","objective":"actionbarCD"},"italic":true,"color":"#D1D1D1"},{"text":"/4 ","italic":true,"color":"#D1D1D1"},{"text":"| ","bold":true},{"text":"Ammo: ","bold":true,"color":"aqua"},{"text":"\u2b24 ","color":"green"},{"score":{"name":"ammo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"},{"text":"/","italic":true,"color":"#55C8C8"},{"score":{"name":"maxAmmo","objective":"actionbarCD"},"italic":true,"color":"#55C8C8"}]