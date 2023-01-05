execute at @s run particle minecraft:rain ^ ^ ^4 1 1 1 1 20
execute at @s run playsound minecraft:item.bucket.empty player @a ~ ~ ~ 1 1
execute at @s positioned ^ ^ ^2 at @e[type=marker,tag=water,distance=..3] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:jungle_wood replace minecraft:bedrock
execute at @s positioned ^ ^ ^2 as @e[type=marker,tag=water,distance=..3] run kill @s