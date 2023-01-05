##damages the person who got shot
execute at @s facing entity @p[tag=shot] eyes positioned ^ ^ ^10 run summon minecraft:bat ~ 400 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Tags:["temp","new"],CustomName:'{"text":"Filler"}',ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:0s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],ActiveEffects:[{Id:20,Amplifier:0b,Duration:60,ShowParticles:0b}]}
#damage temp scoreboard
scoreboard players add #damage temp 10
#damage temp to thorns
execute at @s facing entity @p[tag=shot] eyes positioned ~ 400 ~ store result entity @e[type=minecraft:bat,tag=temp,tag=new,sort=nearest,limit=1] ArmorItems[{id:"minecraft:leather_helmet"}].tag.Enchantments.[{id:"minecraft:thorns"}].lvl short 1 run scoreboard players get #damage temp
execute if score #damage temp matches ..10 at @s facing entity @p[tag=shot] eyes positioned ~ 400 ~ run data modify entity @e[type=minecraft:bat,tag=temp,tag=new,sort=nearest,limit=1] ArmorItems[{id:"minecraft:leather_helmet"}].tag.Enchantments.[{id:"minecraft:thorns"}] set value {}
#bat customname
data modify block 0 1 0 Text1 set value '{"selector":"@p[tag=shot]"}'
execute at @s facing entity @p[tag=shot] eyes positioned ~ 400 ~ run data modify entity @e[type=minecraft:bat,tag=temp,tag=new,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1

#summons arrow
execute at @s facing entity @p[tag=shot] eyes positioned ^ ^ ^10 run summon minecraft:arrow ~ 401.3 ~ {Owner:[I;0,0,0,0],Motion:[0,-1,0],Tags:["temp","damage","new"],damage:5d}
execute at @s as @e[type=minecraft:arrow,tag=temp,tag=damage,tag=new] run data modify entity @s Owner set from entity @e[type=#general:everything,limit=1,sort=nearest] UUID
tag @e[type=minecraft:arrow,tag=temp,tag=damage,tag=new] remove new


##damages the shooter if the person who got shot has thorns
summon minecraft:bat ~ 450 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Tags:["temp","new","player"],CustomName:'{"text":"Filler"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:20,Amplifier:0b,Duration:60,ShowParticles:0b}]}

execute at @s as @e[type=minecraft:bat,tag=temp,tag=player] run item replace entity @s armor.head from entity @e[type=#general:everything,distance=0..1,limit=1,sort=nearest] armor.head
execute at @s as @e[type=minecraft:bat,tag=temp,tag=player] run item replace entity @s armor.chest from entity @e[type=#general:everything,distance=0..1,limit=1,sort=nearest] armor.chest
execute at @s as @e[type=minecraft:bat,tag=temp,tag=player] run item replace entity @s armor.legs from entity @e[type=#general:everything,distance=0..1,limit=1,sort=nearest] armor.legs
execute at @s as @e[type=minecraft:bat,tag=temp,tag=player] run item replace entity @s armor.feet from entity @e[type=#general:everything,distance=0..1,limit=1,sort=nearest] armor.feet

summon minecraft:arrow ~ 451.3 ~ {Owner:[I;0,0,0,0],Tags:["temp","player"]}

execute as @e[type=minecraft:arrow,tag=temp,tag=player,tag=new] run data modify entity @s Owner set from entity @p[tag=shot] UUID
tag @e[type=minecraft:arrow,tag=temp,tag=player,tag=new] remove new

#in combat
execute as @p[tag=shot] run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if entity @s[type=minecraft:player] run scoreboard players operation @s healingInCombat = .duration healingInCombat


#tellraw @a {"score":{"name":"#damage","objective":"temp"}}