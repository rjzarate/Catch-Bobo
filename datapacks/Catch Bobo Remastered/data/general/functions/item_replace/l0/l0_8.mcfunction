execute if score #slot temp matches 24 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:24b}]
execute if score #slot temp matches 24 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.15 from block 0 0 0 container.0
execute if score #slot temp matches 24 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 25 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:25b}]
execute if score #slot temp matches 25 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.16 from block 0 0 0 container.0
execute if score #slot temp matches 25 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 26 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:26b}]
execute if score #slot temp matches 26 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.17 from block 0 0 0 container.0
execute if score #slot temp matches 26 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
