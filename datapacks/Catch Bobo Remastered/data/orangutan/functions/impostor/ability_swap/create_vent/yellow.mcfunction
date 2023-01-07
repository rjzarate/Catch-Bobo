clear @s minecraft:ender_eye{Tags:["createBlueVent"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'[{"text":"Build ","color":"gold","bold":true,"italic":false},{"text":"Yellow ","color":"yellow"},{"text":"Vent","color":"gold"}]'},Enchantments:[{}],Tags:["impostor","createVent","createYellowVent","ventCooldownIncrease","activationRequirement","onGround","ventHealth","ventLifespan","uponDrop","cooldown","actionbarRegular"],createYellowVent:1,ventCooldownIncrease:15,ventHealth:10,ventLifespan:450,cooldown:15,CustomModelData:105} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["createBlueVent"]}}}]

execute anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:104} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
playsound minecraft:entity.item_frame.rotate_item player @s ~ ~ ~ 1 1