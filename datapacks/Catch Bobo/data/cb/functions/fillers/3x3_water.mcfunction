execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.3x3water run function cb:fillers/3x3_water_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{3x3water:1}}]}] run function cb:fillers/3x3_water_fill


