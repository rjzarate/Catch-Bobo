

execute if score @s marshal1 matches 10 unless score @s marshalMessage matches 1 at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 0.5 2
execute if score @s marshal1 matches 10 unless score @s marshalMessage matches 1 run tellraw @s [{"text":"Ready to shoot. Switch to your ","color":"green","bold":true,"italic":true},{"text":"Knife ","color":"dark_red","italic":false},{"text":"to shoot."}]
execute if score @s marshal1 matches 10 unless score @s marshalMessage matches 1 run tellraw @s {"text":"You must be on the ground to shoot.","color":"red","bold":true,"italic":true}

execute if score @s marshal1 matches 10 run scoreboard players set @s marshalMessage 1

execute if score @s marshal1 matches 10.. if score @s marshal matches ..0 if data entity @s SelectedItem.tag.knife at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 2
execute if score @s marshal1 matches 10.. if score @s marshal matches ..0 if data entity @s SelectedItem.tag.knife if data entity @s SelectedItem.tag.knife run scoreboard players set @s marshal1 0
execute if score @s marshal1 matches 10.. if score @s marshal matches ..0 if data entity @s SelectedItem.tag.knife if data entity @s SelectedItem.tag.knife run scoreboard players set @s marshal2 0
execute if score @s marshal1 matches 10.. if score @s marshal matches ..0 if data entity @s SelectedItem.tag.knife if data entity @s SelectedItem.tag.knife run scoreboard players set @s marshal3 0

execute if score @s marshal1 matches 10.. if score @s marshal matches 1.. run function cb:game/during/player/skills/hunters/jett/marshal/shoot

 

execute if score @s marshal3 matches 3.. if score @s marshal1 > @s marshal2 run scoreboard players add @s marshal2 1
execute if score @s marshal3 matches 3.. if score @s marshal1 <= @s marshal2 run scoreboard players set @s marshal1 0
execute if score @s marshal3 matches 3.. if score @s marshal1 <= @s marshal2 run scoreboard players set @s marshal2 0
execute if score @s marshal3 matches 3.. if score @s marshal1 <= @s marshal2 run scoreboard players set @s marshal3 0

