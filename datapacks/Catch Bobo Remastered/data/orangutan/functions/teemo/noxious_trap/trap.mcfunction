scoreboard players remove @s noxiousTrapDuration 1
execute if score @s noxiousTrapDuration = .armTime noxiousTrapStats run effect give @s minecraft:invisibility 1000000 0 true
execute unless score @s noxiousTrapDuration matches 0.. run kill @s