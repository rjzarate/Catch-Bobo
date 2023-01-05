#effects over time
scoreboard players reset .regenerationChange regeneration
execute if score @s regeneration1 matches 1.. run scoreboard players add .regenerationChange regeneration 2
execute if score @s regeneration2 matches 1.. run scoreboard players add .regenerationChange regeneration 3
execute if score @s regeneration3 matches 1.. run scoreboard players add .regenerationChange regeneration 5
execute if score @s regeneration4 matches 1.. run scoreboard players add .regenerationChange regeneration 8
scoreboard players reset .poisonChange poison
execute if score @s poison1 matches 1.. run scoreboard players add .poisonChange poison 2
execute if score @s poison2 matches 1.. run scoreboard players add .poisonChange poison 3
execute if score @s poison3 matches 1.. run scoreboard players add .poisonChange poison 4
execute if score @s poison4 matches 1.. run scoreboard players add .poisonChange poison 5
execute if score @s poison5 matches 1.. run scoreboard players add .poisonChange poison 8
scoreboard players reset .witherChange wither
execute if score @s wither1 matches 1.. run scoreboard players add .witherChange wither 2
execute if score @s wither2 matches 1.. run scoreboard players add .witherChange wither 3
execute if score @s wither3 matches 1.. run scoreboard players add .witherChange wither 4
execute if score @s wither4 matches 1.. run scoreboard players add .witherChange wither 5
execute if score @s wither5 matches 1.. run scoreboard players add .witherChange wither 8


execute if score .regenerationChange regeneration matches 2..11 if score @s regeneration matches 100.. run effect give @s minecraft:regeneration 1 2 false
execute if score .regenerationChange regeneration matches 2..11 if score @s regeneration matches 100.. run scoreboard players remove @s regeneration 100
execute if score .regenerationChange regeneration matches 12.. if score @s regeneration matches 300.. run effect give @s minecraft:regeneration 1 3 false
execute if score .regenerationChange regeneration matches 12.. if score @s regeneration matches 300.. run scoreboard players remove @s regeneration 300

execute if score .poisonChange poison matches 2..4 if score @s poison matches 60.. run effect give @s minecraft:poison 1 1 false
execute if score .poisonChange poison matches 2..4 if score @s poison matches 60.. run scoreboard players remove @s poison 60
execute if score .poisonChange poison matches 5.. if score @s poison matches 120.. run effect give @s minecraft:poison 1 4 false
execute if score .poisonChange poison matches 5.. if score @s poison matches 120.. run scoreboard players remove @s poison 120
execute if score .poisonChange poison matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat

execute if score .witherChange wither matches 2..5 if score @s wither matches 80.. run effect give @s minecraft:wither 1 1 false
execute if score .witherChange wither matches 2..5 if score @s wither matches 80.. run scoreboard players remove @s wither 80
execute if score .witherChange wither matches 6.. if score @s wither matches 160.. run effect give @s minecraft:wither 1 4 false
execute if score .witherChange wither matches 6.. if score @s wither matches 160.. run scoreboard players remove @s wither 160
execute if score .witherChange poison matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat