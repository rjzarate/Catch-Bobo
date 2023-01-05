execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.21x21grass run function cb:fillers/21x21_grass_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{21x21grass:1}}]}] run function cb:fillers/21x21_grass_fill


