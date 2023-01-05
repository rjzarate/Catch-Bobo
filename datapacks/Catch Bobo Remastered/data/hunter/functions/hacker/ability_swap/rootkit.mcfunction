clear @s minecraft:ender_eye{Tags:["ransomware"]}
data remove storage minecraft:inventory SelectedItem
data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Rootkit","color":"dark_red","bold":true,"italic":false}'},Enchantments:[{}],Tags:["hacker","rootkit","duration","slowness10Decimal","radius","batteryUsage","uponDrop","actionbarSpecial"],duration:5,slowness10Decimal:15,radius:8,batteryUsage:25} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats

execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["ransomware"]}}}]

execute at @s anchored eyes run particle minecraft:item minecraft:ender_eye{} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.75 1.5