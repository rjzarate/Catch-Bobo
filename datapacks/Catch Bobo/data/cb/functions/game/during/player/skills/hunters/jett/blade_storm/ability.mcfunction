execute if data entity @s SelectedItem.tag.bladeStorm unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless score @s bladeStorm matches ..0 run scoreboard players remove @s bladeStorm 1


execute if data entity @s SelectedItem.tag.bladeStorm unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless score @s bladeStorm matches ..0 run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"Blade Storm","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Shoot up to 4 arrows a second.","color":"gray","italic":true}','{"text":"5 Max Ammo | 60s (+5 Ammo) CD"}']},HideFlags:5,Unbreakable:1b,bladeStorm:1,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b,noDrop:1} 1

