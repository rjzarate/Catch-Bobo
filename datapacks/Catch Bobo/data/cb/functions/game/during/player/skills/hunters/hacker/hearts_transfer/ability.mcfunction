scoreboard players remove @s battery 26

effect give @s instant_damage 1 1
execute at @s anchored eyes run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0 0.2 0.1 6
execute at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.5

execute at @s as @a[team=Hunters,distance=26..] if score @s health matches ..29 at @s anchored eyes run particle minecraft:heart ~ ~1 ~ 0.2 0 0.2 0.1 3
execute at @s as @a[team=Hunters,distance=26..] if score @s health matches ..29 at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2
execute at @s as @a[team=Hunters,distance=26..] if score @s health matches ..29 run effect give @s instant_health 1 0