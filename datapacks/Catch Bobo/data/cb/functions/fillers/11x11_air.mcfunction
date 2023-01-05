execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.11x11air run function cb:fillers/11x11_air_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{3xair:1}}]}] run function cb:fillers/11x11_air_fill


