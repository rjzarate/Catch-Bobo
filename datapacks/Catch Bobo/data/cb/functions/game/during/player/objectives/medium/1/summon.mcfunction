scoreboard players reset @s objectiveSans

summon wandering_trader ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:8b,Amplifier:1b,Duration:20000000,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Invulnerable:1b,Tags:["sans","noTimeStop","noDamage"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:3s}]}},{},{},{}],Attributes:[{Name:generic.movement_speed,Base:1.25}],WanderTarget:{X:0,Y:0,Z:0},Offers:{},CustomName:'{"text":"sans","color":"aqua","bold":true}'}

execute unless entity @e[type=armor_stand,tag=sans] run summon armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["sans","noDamage","noTimeStop"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16429815},Enchantments:[{}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4619971},Enchantments:[{}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1075612150,944654141,-1270342541,-1555910951],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVhZWY4ZDczYzZiM2I5N2Q3YjU3MTZmY2EyMTVmNWViYTY3OTkyMTJkMTFlYjYzZTE1ODg5NDBkMWUyMWI3MyJ9fX0="}]}}}}],CustomName:'{"text":"sans","color":"aqua","bold":true}'}

execute at @s run playsound minecraft:block.note_block.didgeridoo record @s ~ ~ ~ 1 1
tellraw @s ["",{"text":"<"},{"text":"sans","color":"aqua"},{"text":"> if you can get 100 block away from me ill give you the objective.\n<"},{"text":"sans","color":"aqua"},{"text":"> ill give you 5 seconds before i chase you."}]


data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.X set from entity @s Pos[0]
data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.Y set from entity @s Pos[1]
data modify entity @e[type=minecraft:wandering_trader,tag=sans,limit=1,sort=nearest] WanderTarget.Z set from entity @s Pos[2]