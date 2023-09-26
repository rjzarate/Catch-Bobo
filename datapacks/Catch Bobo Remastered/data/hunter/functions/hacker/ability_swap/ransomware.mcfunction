clear @s minecraft:ender_eye{Tags:["rootkit"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

execute if score @s battery >= .ransomwareBatteryUsage hackerStats run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Ransomware","color":"dark_red","bold":true,"italic":false}'},Tags:["hacker","ransomware","range","blastSize","toHunters","toHuntersCooldowns","toOrangutans","toOrangutansCooldownsIncrease","batteryUsage","uponDrop","actionbarSpecial"],range:25,blastSize:4,toHuntersCooldowns:-15,toOrangutansCooldownsIncrease:8,batteryUsage:10,CustomModelData:1602} 1
execute unless score @s battery >= .ransomwareBatteryUsage hackerStats run item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Ransomware","color":"dark_red","bold":true,"italic":false}'},Tags:["hacker","ransomware","range","blastSize","toHunters","toHuntersCooldowns","toOrangutans","toOrangutansCooldownsIncrease","batteryUsage","uponDrop","actionbarSpecial"],range:25,blastSize:4,toHuntersCooldowns:-15,toOrangutansCooldownsIncrease:8,batteryUsage:10,CustomModelData:1001602} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["rootkit"]}}}]

execute at @s anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1601} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.75 1.5