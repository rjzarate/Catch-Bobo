clear @s minecraft:ender_eye{Tags:["sabotageO2"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

scoreboard players operation .search uuidLink = @s uuid

execute unless score @s sabotageCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage Reactor","color":"gold","bold":true,"italic":false}'},Tags:["impostor","sabotage","sabotageReactor","chargeUp","chargeUpRequirement","twoHuntersAlive","aliveOcelot","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageReactor:1,chargeUp:60,ocelotHealth:10,ocelotSpeed:100,ocelotLifespan:60,cooldown:120,CustomModelData:108} 1
execute if score @s sabotageCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage Reactor","color":"gold","bold":true,"italic":false}'},Tags:["impostor","sabotage","sabotageReactor","chargeUp","chargeUpRequirement","twoHuntersAlive","aliveOcelot","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageReactor:1,chargeUp:60,ocelotHealth:10,ocelotSpeed:100,ocelotLifespan:60,cooldown:120,CustomModelData:1000108} 1

execute if entity @e[type=minecraft:ocelot,tag=sabotage,tag=reactor,predicate=general:uuid_link_search] run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage Reactor","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["impostor","sabotage","sabotageReactor","chargeUp","chargeUpRequirement","twoHuntersAlive","aliveOcelot","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageReactor:1,chargeUp:60,ocelotHealth:10,ocelotSpeed:100,ocelotLifespan:60,cooldown:120,CustomModelData:108} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["sabotageO2"]}}}]

execute unless score @s sabotageCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:107} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s sabotageCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000107} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.item_frame.rotate_item player @s ~ ~ ~ 1 1