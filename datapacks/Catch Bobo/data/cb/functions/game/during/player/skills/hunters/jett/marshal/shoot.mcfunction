

execute if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.knife at @s run tag @s add shot
execute if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.knife at @s anchored eyes run function cb:game/during/player/skills/hunters/jett/marshal/raycast
execute if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.knife at @s run tag @s remove shot
execute if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.knife at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 2

execute if data entity @s[nbt={OnGround:0b}] SelectedItem.tag.knife at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 2

execute if data entity @s SelectedItem.tag.knife run scoreboard players remove @s marshal 1
execute if data entity @s SelectedItem.tag.knife run scoreboard players set @s marshal1 0
execute if data entity @s SelectedItem.tag.knife run scoreboard players set @s marshal2 0
execute if data entity @s SelectedItem.tag.knife run scoreboard players set @s marshal3 0