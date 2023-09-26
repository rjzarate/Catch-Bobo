clear @s minecraft:ender_eye{Tags:["sabotageReactor"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

scoreboard players operation .search uuidLink = @s uuid

execute unless score @s sabotageCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage Lights","color":"gold","bold":true,"italic":false}'},Tags:["impostor","sabotage","sabotageLights","duration","chargeUp","darkness","chargeUpRequirement","twoHuntersAlive","aliveOcelot","durationRequirement","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageO2:1,duration:25,chargeUp:10,darkness:10,ocelotHealth:20,ocelotSpeed:75,ocelotLifespan:60,cooldown:60,CustomModelData:109} 1
execute if score @s sabotageCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage Lights","color":"gold","bold":true,"italic":false}'},Tags:["impostor","sabotage","sabotageLights","duration","chargeUp","darkness","chargeUpRequirement","twoHuntersAlive","aliveOcelot","durationRequirement","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageO2:1,duration:25,chargeUp:10,darkness:50,ocelotHealth:20,ocelotSpeed:75,ocelotLifespan:60,cooldown:60,CustomModelData:1000109} 1

execute if entity @e[type=minecraft:ocelot,tag=sabotage,tag=lights,predicate=general:uuid_link_search] run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage Lights","color":"gold","bold":true,"italic":false}'},Enchantments:[{}],Tags:["impostor","sabotage","sabotageLights","duration","chargeUp","darkness","chargeUpRequirement","twoHuntersAlive","aliveOcelot","durationRequirement","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageO2:1,duration:50,chargeUp:10,darkness:10,ocelotHealth:20,ocelotSpeed:75,ocelotLifespan:60,cooldown:60,CustomModelData:109} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["sabotageReactor"]}}}]

execute unless score @s sabotageCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:108} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s sabotageCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000108} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.item_frame.rotate_item player @s ~ ~ ~ 1 1