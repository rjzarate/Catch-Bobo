execute if score #slot temp matches 27 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:27b}]
execute if score #slot temp matches 27 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.18 from block 0 0 0 container.0
execute if score #slot temp matches 27 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 28 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:28b}]
execute if score #slot temp matches 28 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.19 from block 0 0 0 container.0
execute if score #slot temp matches 28 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 29 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:29b}]
execute if score #slot temp matches 29 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.20 from block 0 0 0 container.0
execute if score #slot temp matches 29 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
