execute if score #slot temp matches 6 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:6b}]
execute if score #slot temp matches 6 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute if score #slot temp matches 6 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 7 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:7b}]
execute if score #slot temp matches 7 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute if score #slot temp matches 7 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 8 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:8b}]
execute if score #slot temp matches 8 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.8 from block 0 0 0 container.0
execute if score #slot temp matches 8 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
