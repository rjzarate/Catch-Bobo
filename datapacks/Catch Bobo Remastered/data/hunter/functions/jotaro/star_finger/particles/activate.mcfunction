summon minecraft:marker ~ ~ ~ {Tags:["starFinger"]}

execute at @s anchored eyes positioned ^ ^2.2 ^-1.5 facing entity @e[type=minecraft:marker,tag=starFinger] eyes run function hunter:jotaro/star_finger/particles/raycast

kill @e[type=minecraft:marker,tag=starFinger]