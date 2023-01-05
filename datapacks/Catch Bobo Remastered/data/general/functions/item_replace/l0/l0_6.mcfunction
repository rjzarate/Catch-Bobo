execute if score #slot temp matches 18 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:18b}]
execute if score #slot temp matches 18 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.9 from block 0 0 0 container.0
execute if score #slot temp matches 18 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 19 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:19b}]
execute if score #slot temp matches 19 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.10 from block 0 0 0 container.0
execute if score #slot temp matches 19 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
execute if score #slot temp matches 20 store success score #hasItemInSlot temp run data get storage minecraft:inventory Inventory[{Slot:20b}]
execute if score #slot temp matches 20 if score #hasItemInSlot temp matches 0 run item replace entity @s inventory.11 from block 0 0 0 container.0
execute if score #slot temp matches 20 if score #hasItemInSlot temp matches 1 run loot give @s mine 0 0 0 air{drop_contents:true}
