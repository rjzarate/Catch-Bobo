clear @s minecraft:ender_eye{Tags:["sabotageLights"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute unless score @s sabotageCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage O2","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["impostor","sabotage","sabotageO2","duration","chargeUp","poison2","chargeUpRequirement","twoHuntersAlive","aliveOcelot","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageO2:1,duration:10,chargeUp:50,poison2:10,ocelotHealth:5,ocelotSpeed:200,ocelotLifespan:50,cooldown:120,CustomModelData:107} 1
execute if score @s sabotageCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage O2","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["impostor","sabotage","sabotageO2","duration","chargeUp","poison2","chargeUpRequirement","twoHuntersAlive","aliveOcelot","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageO2:1,duration:10,chargeUp:50,poison2:10,ocelotHealth:5,ocelotSpeed:200,ocelotLifespan:50,cooldown:120,CustomModelData:1000107} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["sabotageLights"]}}}]

execute unless score @s sabotageCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:109} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s sabotageCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000109} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.item_frame.rotate_item player @s ~ ~ ~ 1 1