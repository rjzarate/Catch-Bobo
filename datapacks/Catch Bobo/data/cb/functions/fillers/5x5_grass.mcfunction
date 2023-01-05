execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.5x5grass run function cb:fillers/5x5_grass_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{5x5grass:1}}]}] run function cb:fillers/5x5_grass_fill


