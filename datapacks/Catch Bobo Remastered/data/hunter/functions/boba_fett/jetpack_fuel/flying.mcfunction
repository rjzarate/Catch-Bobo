execute if score @s jetpackFuel matches 1.. run scoreboard players remove @s jetpackFuel 1
execute if score @s jetpackFuel matches 1.. run scoreboard players set @s jetpackFuelDelay 20
execute if score @s jetpackFuel matches 0 run scoreboard players set @s jetpackFuelDelay 50


execute if score @s jetpackFuel matches 50 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s jetpackFuel matches 30 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s jetpackFuel matches 10 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s jetpackFuel matches ..0 at @s run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 0.5

execute if score @s jetpackFuel matches ..0 run item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Jetpack","color":"dark_red","bold":true,"italic":false}',color:3950130},Unbreakable:0b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,Damage:432} 1