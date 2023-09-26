#creates shulker
execute store result score #height temp run data get entity @s Pos[1] 1
execute unless predicate general:is_sneaking at @s positioned ~ ~-1.1 ~ unless entity @e[type=minecraft:shulker,distance=..0.8] if score #height temp < .maxHeight thunderBreakerStats if block ~ ~ ~ #general:dashables run summon minecraft:shulker ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Color:0b,Health:0.01f,Tags:["timeStoppable","thunderBreaker"]}

#sneaking kills shulker under you and creates a new one
execute if predicate general:is_sneaking if predicate general:on_ground at @s positioned ~ ~-1.1 ~ as @e[type=minecraft:shulker,distance=..1] run scoreboard players add @s thunderBreakerShulker 200
execute if predicate general:is_sneaking unless predicate general:on_ground at @s positioned ~ ~-2.1 ~ unless entity @e[type=minecraft:shulker,distance=..0.8] if block ~ ~ ~ #general:dashables run summon minecraft:shulker ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Color:0b,Health:0.01f,Tags:["timeStoppable","thunderBreaker"]}

execute if score @s moving matches 1 at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1 normal


scoreboard players remove @s thunderBreakerDuration 1
execute if score @s thunderBreakerDuration matches 50 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s thunderBreakerDuration matches 30 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s thunderBreakerDuration matches 10 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s thunderBreakerDuration matches ..0 at @s run playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
execute if score @s thunderBreakerDuration matches ..0 run function hunter:mori/thunder_breaker/deactivate