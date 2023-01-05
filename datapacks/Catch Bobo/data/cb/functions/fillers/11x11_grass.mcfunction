execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.11x11grass run function cb:fillers/11x11_grass_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{11x11grass:1}}]}] run function cb:fillers/11x11_grass_fill


