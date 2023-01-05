execute if score #slot temp matches 3 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:3b}]
execute if score #slot temp matches 3 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute if score #slot temp matches 3 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 4 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:4b}]
execute if score #slot temp matches 4 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute if score #slot temp matches 4 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 5 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:5b}]
execute if score #slot temp matches 5 if score #hasItemInSlot temp matches 0 run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute if score #slot temp matches 5 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
