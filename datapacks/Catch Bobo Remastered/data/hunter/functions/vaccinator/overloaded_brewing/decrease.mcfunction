scoreboard players remove @s overloadedBrewing 1

execute if score @s overloadedBrewing matches 3 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 2
execute if score @s overloadedBrewing matches 2 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 1.6
execute if score @s overloadedBrewing matches 1 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 1.3
execute if score @s overloadedBrewing matches 0 at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.5 1

execute at @s anchored eyes run particle minecraft:smoke ^ ^-0.2 ^0.2 0.1 0.1 0.1 0 5