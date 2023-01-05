execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.21x21x21stone run function cb:fillers/21x21x21_stone_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{21x21x21stone:1}}]}] run function cb:fillers/21x21x21_stone_fill


