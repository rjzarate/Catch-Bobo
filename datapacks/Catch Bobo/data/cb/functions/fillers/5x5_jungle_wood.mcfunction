execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.5x5jungle_wood run function cb:fillers/5x5_jungle_wood_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{5x5jungle_wood:1}}]}] run function cb:fillers/5x5_jungle_wood_fill


