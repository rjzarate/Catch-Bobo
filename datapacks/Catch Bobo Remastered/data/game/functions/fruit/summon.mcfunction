#summon fruits whether they are glowing are not
	execute if score .fruitGlowing gameStats matches 0 run summon item 0 1 0 {Glowing:0b,Age:-32768,Health:1000000,PickupDelay:32767,Tags:["fruit","banana","new"],Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1000000}}}
	execute if score .fruitGlowing gameStats matches 1 run summon item 0 1 0 {Glowing:1b,Age:-32768,Health:1000000,PickupDelay:32767,Tags:["fruit","banana","new"],Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1000000}}}


scoreboard players remove #fruitsOnField game 1
execute if score #fruitsOnField game matches 1.. run function game:fruit/summon

#check if pos is too low
	execute store result score #Pos1 temp run data get entity @e[type=minecraft:item,tag=fruit,tag=new,limit=1] Pos[1] 1
	execute if score #Pos1 temp matches ..28 as @e[type=minecraft:item,tag=fruit,tag=new,limit=1] run kill @s

	tag @e[type=minecraft:item,tag=new] remove new