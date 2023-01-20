scoreboard players set @s swapCD 5

clear @s minecraft:ender_eye{Tags:["starPlatinumPunch"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Star Platinum Uppercut","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;941097204,1416514812,-1781051719,310661318],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.7,Operation:0,UUID:[I;-1481760752,1585925069,-1376131617,-1860209074],Slot:"mainhand"}],Tags:["jotaro","starPlatinumUppercut","meleeDamage","attackSpeed","successfulHitRequirement","damageDealt","successfulHit","successfulHitDuration","successfulHitDamage","uponActivation","starPlatinum","actionbarSpecial"],CustomModelData:1002,HideFlags:2,starPlatinumPunch:1,meleeDamage:6,attackSpeed:30,damageDealt:6,successfulHitDuration:5,successfulHitDamage:2,noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}


execute at @s anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1001} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.75 1.5