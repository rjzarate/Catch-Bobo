scoreboard players remove @s dD 1
scoreboard players add @s objectiveAbility 1

effect give @s minecraft:speed 1 4 true
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:weakness 1 100 true


item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] at @s run summon armor_stand ~ ~.1 ~ {Team:"Bobo",Glowing:1b,Tags:["dD"],NoBasePlate:1b,ShowArms:1b,DisabledSlots:16128}
execute unless entity @s[nbt={ActiveEffects:[{Id:24b}]}] at @s run summon armor_stand ~ ~.1 ~ {Team:"Bobo",Glowing:0b,Tags:["dD"],NoBasePlate:1b,ShowArms:1b,DisabledSlots:16128}

execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/1 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 1
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/2 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 2
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/3 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 3
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/4 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 4
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/5 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 5
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/6 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 6
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/7 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 7
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/8 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 8
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/9 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 9
execute if entity @s[nbt={ActiveEffects:[{Id:24b}]}] if predicate cb:glowing/10 as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run scoreboard players set @s dDG 10
effect clear @s glowing

execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run data modify entity @s Rotation set from entity @p[team=Bobo,tag=bobo] Rotation 
execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Bobo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1571403990,1660439100,-2108560740,2139713089],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEyYzQzNzI2NTMwMGYzMjRkZDBlZWNhNzM0ODQ5MWVjYzc4ZmY3MTJkNTcyNDFlOTg3ZmFlNjMzMjAzYmU1ZSJ9fX0="}]}},bobo:1} 1
execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Leather Chestplate","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Leather Leggings","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Leather Boots","color":"gold","bold":true,"italic":false}',color:16755760},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run item replace entity @s weapon.mainhand from entity @p[team=Bobo,tag=bobo] weapon.mainhand
execute at @s as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run item replace entity @s weapon.offhand from entity @p[team=Bobo,tag=bobo] weapon.offhand

execute as @e[type=minecraft:armor_stand,tag=dD,tag=!finished] run tag @s add finished