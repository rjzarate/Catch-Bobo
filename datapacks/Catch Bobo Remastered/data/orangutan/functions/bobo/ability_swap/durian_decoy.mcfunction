clear @s minecraft:ender_eye{Tags:["blindingBlueberry"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute unless score @s blindingBlueberryDurianDecoyCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Durian Decoy","color":"gold","bold":true,"italic":false}'},Tags:["bobo","duration","durianDecoy","invisibility","speed5","weakness100","removesGlowing","decoy","uponDrop","cooldown","actionbarDuration"],CustomModelData:3,duration:5,invisibility:5,speed5:5,weakness100:5,duration:5,decoy:10,decoySlowness5:3,cooldown:50} 1
execute if score @s blindingBlueberryDurianDecoyCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Durian Decoy","color":"gold","bold":true,"italic":false}'},Tags:["bobo","duration","durianDecoy","invisibility","speed5","weakness100","removesGlowing","decoy","uponDrop","cooldown","actionbarDuration"],CustomModelData:1000003,duration:5,invisibility:5,speed5:5,weakness100:5,duration:5,decoy:10,decoySlowness5:3,cooldown:50} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["blindingBlueberry"]}}}]

execute unless score @s blindingBlueberryDurianDecoyCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:2} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s blindingBlueberryDurianDecoyCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000002} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.generic.eat player @s ~ ~ ~ 0.75 1.5