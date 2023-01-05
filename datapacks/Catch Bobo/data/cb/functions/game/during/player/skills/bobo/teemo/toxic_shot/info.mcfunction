scoreboard players operation @s toxicShotV = @s toxicShot
execute unless entity @s[nbt={SelectedItem:{tag:{toxicShot:1,Charged:0b}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{toxicShot:1,Charged:0b}}]}] run scoreboard players add @s toxicShotV 1




execute if score @s toxicShotV matches 30.. run title @s actionbar ["",{"text":"Toxic Shot - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"toxicShotV"},"bold":true,"color":"yellow"},{"text":"/30","bold":true,"color":"yellow"}]

execute if score @s toxicShotV matches ..29 run title @s actionbar ["",{"text":"Toxic Shot - ","bold":true,"color":"gold"},{"text":"| "},{"text":"Ammo: ","color":"yellow"},{"score":{"name":"@s","objective":"toxicShotV"},"bold":true,"color":"yellow"},{"text":"/30","bold":true,"color":"yellow"},{"text":" | ","color":"white"},{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"@s","objective":"toxicShotCD"},"bold":true,"color":"aqua"},{"text":" Seconds","bold":true,"color":"aqua"}]