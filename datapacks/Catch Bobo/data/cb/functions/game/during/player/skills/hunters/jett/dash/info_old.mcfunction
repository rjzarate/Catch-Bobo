execute if score @s dash matches 1.. run tellraw @s [{"text":"\nTailwind - ","color":"dark_red","bold":true},{"text":"Ready","color":"green"}]
execute if score @s dash matches ..0 run tellraw @s [{"text":"\nTailwind - ","color":"dark_red","bold":true},{"text":"Not Ready","color":"red"}]

tellraw @s [{"text":"   Charges: ","color":"yellow"},{"score":{"name":"@s","objective":"dash"},"bold":true}]
execute if score @s dash matches ..0 run tellraw @s [{"text":"   Cooldown: ","color":"yellow"},{"score":{"name":"@s","objective":"dashCD"},"bold":true},{"text":" Seconds","color":"yellow","bold":true}]

scoreboard players set @s dashHolding 1