#blaze for custom name and fire charge wont have set blocks on fire
summon minecraft:blaze ~ 400 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Tags:["temp","new"],CustomName:'{"text":"filler"}',active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:20000000,show_particles:0b},{id:20,amplifier:0b,duration:80,show_particles:0b}]}
data modify block 0 1 0 Text1 set value '{"selector":"@p[tag=shot]"}'
execute at @s facing entity @p[tag=shot] eyes positioned ~ 400 ~ run data modify entity @e[type=minecraft:blaze,tag=temp,tag=new,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1
data modify entity @s Owner set from entity @e[type=minecraft:blaze,tag=temp,tag=new,limit=1] UUID
tag @e[type=minecraft:blaze,tag=temp,tag=new] remove new

execute store result score .pos0 Pos run data get entity @e[type=minecraft:marker,sort=nearest,tag=flamethrower,tag=new,limit=1] Pos[0] 10000
execute store result score .pos1 Pos run data get entity @e[type=minecraft:marker,sort=nearest,tag=flamethrower,tag=new,limit=1] Pos[1] 10000
execute store result score .pos2 Pos run data get entity @e[type=minecraft:marker,sort=nearest,tag=flamethrower,tag=new,limit=1] Pos[2] 10000

execute as @s store result score #pos0 Pos run data get entity @s Pos[0] 10000
execute as @s store result score #pos1 Pos run data get entity @s Pos[1] 10000
execute as @s store result score #pos2 Pos run data get entity @s Pos[2] 10000

scoreboard players operation #pos0 Pos -= .pos0 Pos
scoreboard players operation #pos1 Pos -= .pos1 Pos
scoreboard players operation #pos2 Pos -= .pos2 Pos

execute store result entity @s power[0] double 0.0003 run scoreboard players get #pos0 Pos
execute store result entity @s power[1] double 0.0003 run scoreboard players get #pos1 Pos
execute store result entity @s power[2] double 0.0003 run scoreboard players get #pos2 Pos

function general:visual_fix
scoreboard players operation .global visualFix *= #-1 constant