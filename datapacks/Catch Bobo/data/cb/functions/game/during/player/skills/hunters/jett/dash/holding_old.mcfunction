execute if data entity @s SelectedItem.tag.dash unless score @s dashHolding matches 1 at @s run function cb:game/during/player/skills/hunters/jett/dash/info
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{dash:1}}]}] unless score @s dashHolding matches 1 at @s run function cb:game/during/player/skills/hunters/jett/dash/info

execute unless data entity @s SelectedItem.tag.dash unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{dash:1}}]}] run scoreboard players reset @s dashHolding