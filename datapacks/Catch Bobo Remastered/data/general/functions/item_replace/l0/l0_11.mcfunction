execute if score #slot temp matches 33 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:33b}]
execute if score #slot temp matches 33 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.24 from block 0 0 0 container.0
execute if score #slot temp matches 33 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 34 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:34b}]
execute if score #slot temp matches 34 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.25 from block 0 0 0 container.0
execute if score #slot temp matches 34 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 35 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:35b}]
execute if score #slot temp matches 35 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.26 from block 0 0 0 container.0
execute if score #slot temp matches 35 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}