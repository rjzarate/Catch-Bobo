execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.7x7water run function cb:fillers/7x7_water_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{7x7water:1}}]}] run function cb:fillers/7x7_water_fill


