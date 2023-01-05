playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1.5

scoreboard players remove @s flamethrowerAmmo 1
execute if score @s flamethrowerAmmo < .maxAmmo flamethrowerStats unless score @s flamethrowerCD matches 1.. run scoreboard players operation @s flamethrowerCD += .cooldown20t flamethrowerStats

#fire rate
scoreboard players set #fireRate stats 2000
scoreboard players operation #fireRate stats /= .fireRate stats
function general:fire_rate_change
scoreboard players operation @s flamethrowerFireRate = #fireRate stats

#fire charge
tag @s add shot
execute anchored eyes positioned ^ ^-0.1 ^ run summon minecraft:marker ^ ^ ^ {Tags:["bobaFett","flamethrower","new"]}
execute anchored eyes positioned ^ ^-0.1 ^ run summon minecraft:small_fireball ^ ^ ^0.2 {Tags:["bobaFett","flamethrower","new"],power:[0.0,0.0,0.0],Item:{id:"minecraft:orange_dye",Count:1b}}
execute as @e[type=minecraft:small_fireball,sort=nearest,tag=flamethrower,tag=new] run function hunter:boba_fett/flamethrower/small_fireball

kill @e[type=minecraft:marker,sort=nearest,tag=flamethrower,tag=new]
execute as @e[type=minecraft:small_fireball,sort=nearest,tag=new] run tag @s remove new
tag @s remove shot