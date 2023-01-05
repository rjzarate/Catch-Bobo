scoreboard players operation @s rCrossbowVisual = @s rCrossbow
execute unless entity @s[nbt={SelectedItem:{tag:{repeaterCrossbow:1,Charged:0b}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{repeaterCrossbow:1,Charged:0b}}]}] run scoreboard players add @s rCrossbowVisual 1




execute if score @s rCrossbowVisual matches 20.. run title @s actionbar ["",{"text":"Repeater Crossbow - ","bold":true,"color":"dark_red"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"rCrossbowVisual"},"bold":true,"color":"yellow"},{"text":"/20","bold":true,"color":"yellow"}]

execute if score @s rCrossbowVisual matches ..19 run title @s actionbar ["",{"text":"Repeater Crossbow - ","bold":true,"color":"dark_red"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"rCrossbowVisual"},"bold":true,"color":"yellow"},{"text":"/20","bold":true,"color":"yellow"},{"text":" | ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"rCrossbowCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]