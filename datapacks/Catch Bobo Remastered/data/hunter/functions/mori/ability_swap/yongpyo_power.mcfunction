clear @s minecraft:ender_eye{Tags:["yongpyoAcceleration"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yongpyo: Power","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["mori","yongpyo","yongpyoPower","duration","meleeDamageIncrease","rangeDamageIncrease","rangeIncrease","cooldown","uponDrop","actionbarDuration"],duration:25,meleeDamageIncrease:2,rangeDamageIncrease:1,rangeIncrease:2,cooldown:75,uponDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["yongpyoAcceleration"]}}}]

execute at @s anchored eyes run particle minecraft:item minecraft:ender_eye{} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.75 1.5

scoreboard players set @s yongpyoPowerOrAcceleration 0
execute if score @s yongpyoDuration matches 1.. run function hunter:mori/yongpyo/activate_modifiers