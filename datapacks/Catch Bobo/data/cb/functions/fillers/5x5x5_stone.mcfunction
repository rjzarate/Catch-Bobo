execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.5x5x5stone run function cb:fillers/5x5x5_stone_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{5x5x5stone:1}}]}] run function cb:fillers/5x5x5_stone_fill


