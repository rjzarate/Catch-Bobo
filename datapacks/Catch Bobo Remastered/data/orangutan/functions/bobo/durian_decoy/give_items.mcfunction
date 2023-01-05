item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Bobo\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1571403990,1660439100,-2108560740,2139713089],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEyYzQzNzI2NTMwMGYzMjRkZDBlZWNhNzM0ODQ5MWVjYzc4ZmY3MTJkNTcyNDFlOTg3ZmFlNjMzMjAzYmU1ZSJ9fX0="}]}},HideFlags:1} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Bobo Fur","color":"gold","bold":true,"italic":false}',color:16755760},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Bobo Hair","color":"gold","bold":true,"italic":false}',color:16755760},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Bobo Toes","color":"gold","bold":true,"italic":false}',color:16755760},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71} 1

data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:bobo durianDecoy

execute if score @s SelectedItemSlotDurianDecoy matches 0 if data entity @s Inventory[{Slot:0b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 1 if data entity @s Inventory[{Slot:1b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 2 if data entity @s Inventory[{Slot:2b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 3 if data entity @s Inventory[{Slot:3b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 4 if data entity @s Inventory[{Slot:4b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 5 if data entity @s Inventory[{Slot:5b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 6 if data entity @s Inventory[{Slot:6b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 7 if data entity @s Inventory[{Slot:7b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s SelectedItemSlotDurianDecoy matches 8 if data entity @s Inventory[{Slot:8b}] run loot give @s mine 0 0 0 air{drop_contents:true}

execute if score @s SelectedItemSlotDurianDecoy matches 0 unless data entity @s Inventory[{Slot:0b}] run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 1 unless data entity @s Inventory[{Slot:1b}] run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 2 unless data entity @s Inventory[{Slot:2b}] run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 3 unless data entity @s Inventory[{Slot:3b}] run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 4 unless data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 5 unless data entity @s Inventory[{Slot:5b}] run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 6 unless data entity @s Inventory[{Slot:6b}] run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 7 unless data entity @s Inventory[{Slot:7b}] run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute if score @s SelectedItemSlotDurianDecoy matches 8 unless data entity @s Inventory[{Slot:8b}] run item replace entity @s hotbar.8 from block 0 0 0 container.0


setblock 0 0 0 yellow_shulker_box{}