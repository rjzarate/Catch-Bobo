clear @s minecraft:ender_eye{Tags:["createGreenVent"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute unless score @s createVentCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'[{"text":"Build ","color":"gold","bold":true,"italic":false},{"text":"Red ","color":"red"},{"text":"Vent","color":"gold"}]'},Tags:["impostor","createVent","createRedVent","ventCooldownIncrease","activationRequirement","onGround","ventHealth","ventLifespan","uponDrop","cooldown","actionbarRegular"],createRedVent:1,ventCooldownIncrease:15,ventHealth:10,ventLifespan:450,cooldown:15,CustomModelData:103} 1
execute if score @s createVentCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'[{"text":"Build ","color":"gold","bold":true,"italic":false},{"text":"Red ","color":"red"},{"text":"Vent","color":"gold"}]'},Tags:["impostor","createVent","createRedVent","ventCooldownIncrease","activationRequirement","onGround","ventHealth","ventLifespan","uponDrop","cooldown","actionbarRegular"],createRedVent:1,ventCooldownIncrease:15,ventHealth:10,ventLifespan:450,cooldown:15,CustomModelData:1000103} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["createGreenVent"]}}}]

execute unless score @s createVentCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:106} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s createVentCD matches 1.. anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1000106} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.item_frame.rotate_item player @s ~ ~ ~ 1 1