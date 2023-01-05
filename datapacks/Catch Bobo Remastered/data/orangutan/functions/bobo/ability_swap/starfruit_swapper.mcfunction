clear @s minecraft:ender_eye{Tags:["tangerineTeleporter"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Starfruit Swapper","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["bobo","starfruitSwapper","hunterEffects","resistance2","fireResistance","activationRequirement","onGround","onLava","uponDrop","killCooldown","actionbarOnDeath"],CustomModelData:6,starfruitSwapper:1,resistance2:4,fireResistance:8} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["tangerineTeleporter"]}}}]

execute anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:7} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.generic.eat player @s ~ ~ ~ 0.75 1.5