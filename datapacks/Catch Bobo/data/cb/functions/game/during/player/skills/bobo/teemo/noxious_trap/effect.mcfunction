execute as @a[team=!Bobo,distance=..1.5] run effect give @s minecraft:slowness 5 1
execute as @a[team=!Bobo,distance=..1.5] run effect give @s minecraft:poison 3 0
execute at @s run playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1 2
execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal
kill @s

