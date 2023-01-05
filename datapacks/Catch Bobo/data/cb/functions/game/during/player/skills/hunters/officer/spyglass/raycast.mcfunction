
execute positioned ^ ^ ^1 as @a[tag=!noDamage,team=Bobo,tag=bobo,distance=..3] run scoreboard players add @s spyglassGlowing 2
execute positioned ^ ^ ^1 as @a[tag=!noDamage,team=Bobo,tag=bobo,distance=..3] if score @s spyglassGlowing matches 40.. run effect give @s minecraft:glowing 3 0
execute positioned ^ ^ ^1 as @a[tag=!noDamage,team=Bobo,tag=bobo,distance=..3] if score @s spyglassGlowing matches 40.. run scoreboard players reset @s spyglassGlowing

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:wallbangables if entity @s[distance=..500] unless entity @a[team=Bobo,tag=bobo,distance=..3] run function cb:game/during/player/skills/hunters/officer/spyglass/raycast