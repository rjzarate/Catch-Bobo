execute if score #slot temp matches 0 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:0b}]
execute if score #slot temp matches 0 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute if score #slot temp matches 0 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 1 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:1b}]
execute if score #slot temp matches 1 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute if score #slot temp matches 1 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 2 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:2b}]
execute if score #slot temp matches 2 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute if score #slot temp matches 2 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
