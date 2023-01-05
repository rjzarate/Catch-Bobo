execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.3x3grass run function cb:fillers/3x3_grass_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{3x3grass:1}}]}] run function cb:fillers/3x3_grass_fill


