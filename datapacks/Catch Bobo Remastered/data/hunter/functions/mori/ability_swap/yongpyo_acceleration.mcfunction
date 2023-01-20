clear @s minecraft:ender_eye{Tags:["yongpyoPower"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute unless score @s yongpyoCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yongpyo: Acceleration","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","yongpyo","yongpyoAcceleration","duration","attackSpeedIncrease","movementSpeedIncrease","CooldownReductionRateDecimal","cooldown","uponDrop","actionbarDuration"],duration:25,attackSpeedIncrease:20,movementSpeedIncrease:20,CooldownReductionRateDecimal:25,cooldown:50,uponDrop:1,CustomModelData:1814} 1
execute if score @s yongpyoCD matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yongpyo: Acceleration","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","yongpyo","yongpyoAcceleration","duration","attackSpeedIncrease","movementSpeedIncrease","CooldownReductionRateDecimal","cooldown","uponDrop","actionbarDuration"],duration:25,attackSpeedIncrease:20,movementSpeedIncrease:20,CooldownReductionRateDecimal:25,cooldown:50,uponDrop:1,CustomModelData:1001814} 1
execute if score @s yongpyoDuration matches 1.. run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Yongpyo: Acceleration","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["mori","yongpyo","yongpyoAcceleration","duration","attackSpeedIncrease","movementSpeedIncrease","CooldownReductionRateDecimal","cooldown","uponDrop","actionbarDuration"],duration:25,attackSpeedIncrease:20,movementSpeedIncrease:20,CooldownReductionRateDecimal:25,cooldown:50,uponDrop:1,CustomModelData:1814} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["yongpyoPower"]}}}]

execute unless score @s yongpyoCD matches 1.. at @s anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1813} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s yongpyoDuration matches 1.. at @s anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1813} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute if score @s yongpyoCD matches 1.. unless score @s yongpyoDuration matches 1.. at @s anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1001813} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.75 1.5

scoreboard players set @s yongpyoPowerOrAcceleration 1
execute if score @s yongpyoDuration matches 1.. run function hunter:mori/yongpyo/activate_modifiers