execute as @a if score @s carrotOnAStick matches 1.. if data entity @s SelectedItem.tag.clone1 run function cb:fillers/clone1_fill
execute as @a if score @s carrotOnAStick matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{clone1:1}}]}] run function cb:fillers/clone1_fill


