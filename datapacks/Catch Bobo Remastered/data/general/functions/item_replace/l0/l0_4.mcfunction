execute if score #slot temp matches 12 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:12b}]
execute if score #slot temp matches 12 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.3 from block 0 0 0 container.0
execute if score #slot temp matches 12 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 13 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:13b}]
execute if score #slot temp matches 13 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.4 from block 0 0 0 container.0
execute if score #slot temp matches 13 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 14 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:14b}]
execute if score #slot temp matches 14 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.5 from block 0 0 0 container.0
execute if score #slot temp matches 14 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
