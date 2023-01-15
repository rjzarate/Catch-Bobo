scoreboard players add .fruitsCollected game 1

#gives glowing
	execute if score .fruitGivesGlowing gameStats matches 1 unless score @s glowing matches 10.. run scoreboard players set @s glowing 10

#sounds and visual
	playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1
	execute at @e[type=minecraft:item,tag=fruit,sort=nearest,limit=1] run particle minecraft:item minecraft:ender_eye{CustomModelData:1000000} ~ ~0.25 ~ 0.25 0.25 0.25 0 10 normal

#kills nearest fruit
	kill @e[type=minecraft:item,tag=fruit,sort=nearest,limit=1]

#if orangutans collected enough fruits, goes to end game
	execute if score .fruitsCollected game >= .fruitRequirement gameStats run function game:start/end