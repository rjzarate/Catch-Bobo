execute if score #slot temp matches 30 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:30b}]
execute if score #slot temp matches 30 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.21 from block 0 0 0 container.0
execute if score #slot temp matches 30 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 31 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:31b}]
execute if score #slot temp matches 31 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.22 from block 0 0 0 container.0
execute if score #slot temp matches 31 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 32 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:32b}]
execute if score #slot temp matches 32 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.23 from block 0 0 0 container.0
execute if score #slot temp matches 32 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
