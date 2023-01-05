execute if score #slot temp matches 21 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:21b}]
execute if score #slot temp matches 21 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.12 from block 0 0 0 container.0
execute if score #slot temp matches 21 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 22 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:22b}]
execute if score #slot temp matches 22 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.13 from block 0 0 0 container.0
execute if score #slot temp matches 22 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 23 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:23b}]
execute if score #slot temp matches 23 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.14 from block 0 0 0 container.0
execute if score #slot temp matches 23 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
