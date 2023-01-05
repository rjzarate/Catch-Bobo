scoreboard players set @s bladeStorm 5
execute unless entity @s[nbt={SelectedItem:{tag:{bladeStorm:1,Charged:1b}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{bladeStorm:1,Charged:1b}}]}] run scoreboard players set @s bladeStorm 6
scoreboard players add @s bladeStormCD 60