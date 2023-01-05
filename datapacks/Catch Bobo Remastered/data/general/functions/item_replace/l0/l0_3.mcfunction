execute if score #slot temp matches 9 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:9b}]
execute if score #slot temp matches 9 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.0 from block 0 0 0 container.0
execute if score #slot temp matches 9 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 10 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:10b}]
execute if score #slot temp matches 10 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.1 from block 0 0 0 container.0
execute if score #slot temp matches 10 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 11 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:11b}]
execute if score #slot temp matches 11 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.2 from block 0 0 0 container.0
execute if score #slot temp matches 11 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
