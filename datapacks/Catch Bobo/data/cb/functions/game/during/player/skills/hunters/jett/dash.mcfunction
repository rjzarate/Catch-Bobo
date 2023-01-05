scoreboard players remove @s dash 1
scoreboard players set @s dashCD 30
execute at @s run playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 1 0

summon armor_stand ^ ^ ^2 {Tags:["jett","dash1"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ^ ^ ^1 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash1] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute positioned ^ ^ ^1 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash1] Pos[1] double 1 run data get entity @s Pos[1] 1

execute as @e[type=armor_stand,tag=dash1] at @s run summon armor_stand ^ ^ ^2 {Tags:["jett","dash2"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=dash1] at @s run summon armor_stand ^ ^ ^4 {Tags:["jett","dash3"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=dash1] at @s run summon armor_stand ^ ^ ^6 {Tags:["jett","dash4"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=dash1] at @s run summon armor_stand ^ ^ ^8 {Tags:["jett","dash5"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=dash1] at @s run summon armor_stand ^ ^ ^10 {Tags:["jett","dash6"],NoGravity:1b,Marker:1b,Invisible:1b}

execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^2 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash2] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^4 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash3] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^6 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash4] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^8 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash5] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^10 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash6] Rotation[0] float 1 run data get entity @s Rotation[0] 1

execute positioned ^ ^ ^1 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash1] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^2 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash2] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^4 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash3] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^6 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash4] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^8 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash5] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute as @e[type=armor_stand,tag=dash1] at @s positioned ^ ^ ^10 store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dash6] Rotation[1] float 1 run data get entity @s Rotation[1] 1

execute as @e[type=armor_stand,tag=jett] at @s unless block ~ ~ ~ minecraft:air run kill @s
execute as @e[type=armor_stand,tag=jett] at @s unless block ~ ~1 ~ minecraft:air run kill @s

tag @s add dashing

schedule function cb:game/during/player/skills/hunters/jett/dash/dashing/1 1t

schedule function cb:game/during/player/skills/hunters/jett/dashing/kill 6t