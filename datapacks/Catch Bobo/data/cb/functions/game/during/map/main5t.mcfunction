scoreboard players remove number tripwire 1
execute if block 203 21 -270 minecraft:tripwire_hook[powered=true] unless score number tripwire matches 1.. unless entity @e[type=falling_block,tag=tripwire] run function cb:game/during/map/tunnel/tripwire
execute if block 150 21 -306 minecraft:lever[powered=false] run fill 149 20 -305 148 23 -305 air destroy
execute if block 150 21 -306 minecraft:lever[powered=true] run fill 149 20 -305 148 23 -305 smooth_stone
execute as @e[type=marker,tag=tree] at @s run function cb:game/during/map/tree