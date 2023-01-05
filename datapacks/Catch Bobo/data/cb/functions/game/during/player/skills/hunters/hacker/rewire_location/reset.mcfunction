scoreboard players reset @s rewireLocationCD

execute at @s run particle minecraft:enchant ~ ~1 ~ 0.2 0.5 0.2 2 15
execute at @s run playsound minecraft:ui.button.click player @a ~ ~ ~
execute at @s as @e[type=slime,tag=rewireLocation] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run tp @p @s

execute at @s run particle minecraft:enchant ~ ~1 ~ 0.2 0.5 0.2 2 15
execute at @s run playsound minecraft:ui.button.click player @a ~ ~ ~
execute at @s as @e[type=slime,tag=rewireLocation] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run kill @s