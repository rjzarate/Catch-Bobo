execute if data entity @s SelectedItem.tag.blindingDart unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless score @s blindingDart matches ..0 run scoreboard players remove @s blindingDart 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{blindingDart:1,Charged:0b}}]}] unless score @s blindingDart matches ..0 run scoreboard players remove @s blindingDart 1

execute if data entity @s SelectedItem.tag.blindingDart unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless score @s blindingDart matches ..0 run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Blinding Dart","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Shoot a blinding arrow.","color":"gray"}','{"text":"Blindness lasts for 3 seconds.","color":"gray"}','{"text":"10s CD"}']},HideFlags:5,Unbreakable:1b,blindingDart:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:80}],CustomPotionColor:0}},{},{}],Charged:1b,noDrop:1} 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{blindingDart:1,Charged:0b}}]}] unless score @s blindingDart matches ..0 run item replace entity @s weapon.offhand with crossbow{display:{Name:'{"text":"Blinding Dart","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Shoot a blinding arrow.","color":"gray"}','{"text":"Blindness lasts for 3 seconds.","color":"gray"}','{"text":"10s CD"}']},HideFlags:5,Unbreakable:1b,blindingDart:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:80}],CustomPotionColor:0}},{},{}],Charged:1b,noDrop:1} 1
