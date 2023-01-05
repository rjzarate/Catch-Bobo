execute if score #slot temp matches 15 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:15b}]
execute if score #slot temp matches 15 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.6 from block 0 0 0 container.0
execute if score #slot temp matches 15 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 16 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:16b}]
execute if score #slot temp matches 16 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.7 from block 0 0 0 container.0
execute if score #slot temp matches 16 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 17 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:17b}]
execute if score #slot temp matches 17 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.8 from block 0 0 0 container.0
execute if score #slot temp matches 17 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
