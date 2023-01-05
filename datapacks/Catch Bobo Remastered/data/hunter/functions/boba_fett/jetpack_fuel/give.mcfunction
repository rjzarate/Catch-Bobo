data modify block 0 0 0 Items[{Slot:0b}] set from storage minecraft:boba_fett jetpackFuel

execute if score @s jetpackFuelSlot matches 0 if data entity @s Inventory[{Slot:0b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 1 if data entity @s Inventory[{Slot:1b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 2 if data entity @s Inventory[{Slot:2b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 3 if data entity @s Inventory[{Slot:3b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 4 if data entity @s Inventory[{Slot:4b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 5 if data entity @s Inventory[{Slot:5b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 6 if data entity @s Inventory[{Slot:6b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 7 if data entity @s Inventory[{Slot:7b}] run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score @s jetpackFuelSlot matches 8 if data entity @s Inventory[{Slot:8b}] run loot give @s mine 0 0 0 air{drop_contents:true}

execute if score @s jetpackFuelSlot matches 0 unless data entity @s Inventory[{Slot:0b}] run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 1 unless data entity @s Inventory[{Slot:1b}] run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 2 unless data entity @s Inventory[{Slot:2b}] run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 3 unless data entity @s Inventory[{Slot:3b}] run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 4 unless data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 5 unless data entity @s Inventory[{Slot:5b}] run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 6 unless data entity @s Inventory[{Slot:6b}] run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 7 unless data entity @s Inventory[{Slot:7b}] run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute if score @s jetpackFuelSlot matches 8 unless data entity @s Inventory[{Slot:8b}] run item replace entity @s hotbar.8 from block 0 0 0 container.0


setblock 0 0 0 yellow_shulker_box{}