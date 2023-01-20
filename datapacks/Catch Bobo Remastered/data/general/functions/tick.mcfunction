scoreboard players add 20t universalTimer 1
scoreboard players operation 10t universalTimer = 20t universalTimer
scoreboard players operation 1s universalTimer = 20t universalTimer
scoreboard players operation 10t universalTimer /= #2 constant
scoreboard players operation 1s universalTimer /= #20 constant
scoreboard players operation %20t universalTimer = 20t universalTimer
scoreboard players operation %10t universalTimer = 20t universalTimer
scoreboard players operation %20t universalTimer %= #20 constant
scoreboard players operation %10t universalTimer %= #10 constant
scoreboard players operation %5m universalTimer = 1s universalTimer
scoreboard players operation %5m universalTimer %= #300 constant

execute as @e[type=#general:everything] run function general:apply/effect/give
execute as @e[type=#general:everything,tag=!timeStoppee] run function general:apply/effect/give_over_time
execute as @e[type=#general:everything,tag=!timeStoppee] run function general:apply/effect/reduce
execute as @e[type=#general:everything] run function general:apply/effect/clear
execute as @a[gamemode=!spectator,tag=!timeStoppee,tag=!impostorStun,tag=!displayOnly,tag=!noNaturalHealing] run function general:apply/healing/check

scoreboard players add @e[type=minecraft:arrow,tag=temp] temp 1
kill @e[type=minecraft:arrow,tag=temp,scores={temp=10..}]

execute as @a[tag=testing,scores={health=..20}] run say gained 10+ hearts
execute as @a[tag=testing,scores={health=..20}] run effect give @s minecraft:health_boost 1000000 4 true
execute as @a[tag=testing,scores={health=..20}] run effect give @s minecraft:instant_health 1 4 true

execute as @a unless score @s uuid matches -2147483648..2147483647 run function general:give_uuid

execute as @e[type=minecraft:item,tag=!checked] run function general:dropped
effect give @a minecraft:saturation 1000000 0 true

#execute at Rekin positioned ~ ~-1 ~ unless entity @e[type=minecraft:shulker,distance=..0.7] run summon minecraft:shulker ~ ~ ~ {PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Color:0b}