clear @s minecraft:ender_eye{Tags:["durianDecoy"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute unless score @s blindingBlueberryDurianDecoyCD matches 1.. if score @s blindingBlueberryDuration matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Blinding Blueberry","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["bobo","blindingBlueberry","duration","blindness","slowness1","range","uponDrop","cooldown","actionbarDuration"],CustomModelData:2,blindingBlueberry:1,duration:5,blindness:5,slowness1:5,range:10,cooldown:100} 1
execute unless score @s blindingBlueberryDurianDecoyCD matches 1.. unless score @s blindingBlueberryDuration matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Blinding Blueberry","color":"gold","bold":true,"italic":false}'},Tags:["bobo","blindingBlueberry","duration","blindness","slowness1","range","uponDrop","cooldown","actionbarDuration"],CustomModelData:2,blindingBlueberry:1,duration:5,blindness:5,slowness1:5,range:10,cooldown:100} 1
execute if score @s blindingBlueberryDurianDecoyCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Blinding Blueberry","color":"gold","bold":true,"italic":false}'},Tags:["bobo","blindingBlueberry","duration","blindness","slowness1","range","uponDrop","cooldown","actionbarDuration"],CustomModelData:1000002,blindingBlueberry:1,duration:5,blindness:5,slowness1:5,range:10,cooldown:100} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["durianDecoy"]}}}]

execute unless score @s blindingBlueberryDurianDecoyCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:3} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s blindingBlueberryDurianDecoyCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000003} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.generic.eat player @s ~ ~ ~ 0.75 1.5