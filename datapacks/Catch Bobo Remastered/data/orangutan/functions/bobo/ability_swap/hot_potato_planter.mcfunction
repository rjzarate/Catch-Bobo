clear @s minecraft:ender_eye{Tags:["guavaGrenade"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute if score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Hot Potato Planter","color":"gold","bold":true,"italic":false}'},Tags:["bobo","hotPotatoPlanter","explosion","fuse","ammo","maxAmmo","lifespan","uponDrop","cooldown","ammoCooldown","actionbarAmmo1"],CustomModelData:5,hotPotatoPlanter:1,explosion:3,fuse:50,maxAmmo:3,lifespan:600,cooldown:25,ammoCooldown:1} 1
execute unless score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Hot Potato Planter","color":"gold","bold":true,"italic":false}'},Tags:["bobo","hotPotatoPlanter","explosion","fuse","ammo","maxAmmo","lifespan","uponDrop","cooldown","ammoCooldown","actionbarAmmo1"],CustomModelData:1000005,hotPotatoPlanter:1,explosion:3,fuse:50,maxAmmo:3,lifespan:600,cooldown:25,ammoCooldown:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["guavaGrenade"]}}}]

execute if score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:4} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute unless score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000004} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.generic.eat player @s ~ ~ ~ 0.75 1.5