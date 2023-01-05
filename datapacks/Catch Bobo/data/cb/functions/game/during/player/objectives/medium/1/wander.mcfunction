execute if score @s dD matches 1 run data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.X set from entity @s Pos[0]
execute if score @s dD matches 1 run data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.Y set from entity @s Pos[1]
execute if score @s dD matches 1 run data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.Z set from entity @s Pos[2]

execute if score @s dDCD matches ..149 if score @s dD matches 0 run data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.X set from entity @s Pos[0]
execute if score @s dDCD matches ..149 if score @s dD matches 0 run data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.Y set from entity @s Pos[1]
execute if score @s dDCD matches ..149 if score @s dD matches 0 run data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.Z set from entity @s Pos[2]

tp @e[type=armor_stand,tag=sans] @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest]

execute at @e[type=armor_stand,tag=sans] if entity @s[distance=..3] at @s run particle dust_color_transition 1.000 1.000 1.000 1 0.000 1.000 1.000 ~ ~1 ~ 0.2 0.5 0.2 1 10 normal
execute at @e[type=armor_stand,tag=sans] if entity @s[distance=..3] run effect give @s minecraft:wither 1 1