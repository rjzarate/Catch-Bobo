execute positioned ~ ~-1 ~ if entity @a[team=Bobo,tag=bobo,distance=..0.5] unless score @s bCanister matches 3.. run scoreboard players add @s bCanister 1
execute positioned ~ ~-1 ~ if entity @a[team=Bobo,tag=bobo,distance=..0.5] at @s run playsound minecraft:entity.generic.drink player @a ~ ~ ~ 1 2
execute positioned ~ ~-1 ~ if entity @a[team=Bobo,tag=bobo,distance=..0.5] run particle minecraft:block minecraft:red_concrete ~ ~1 ~ .1 0 .1 1 5 normal
execute positioned ~ ~-1 ~ if entity @a[team=Bobo,tag=bobo,distance=..0.5] run kill @e[type=fishing_bobber,sort=nearest,limit=1]