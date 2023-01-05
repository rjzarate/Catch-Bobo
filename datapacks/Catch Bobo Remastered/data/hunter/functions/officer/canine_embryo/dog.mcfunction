
#links uuid and owner
	scoreboard players operation @s uuidLink = .search uuid
	data modify entity @s Owner set from entity @p[team=Hunters,tag=officer] UUID


execute store result entity @s Attributes[{Name:"generic.armor"}].Base double 1 run data get storage minecraft:stats tag.dogArmor
execute store result entity @s Attributes[{Name:"generic.attack_damage"}].Base double 1 run data get storage minecraft:stats tag.dogMeleeDamage
execute store result entity @s Attributes[{Name:"generic.movement_speed"}].Base double 0.003 run data get storage minecraft:stats tag.dogMovementSpeed

#custom name
	scoreboard players set in math 1
	scoreboard players set in1 math 8
	function math:rng/range

	execute if score out math matches 1 run data modify block 0 1 0 Text1 set value '{"text":"Mochi","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 2 run data modify block 0 1 0 Text1 set value '{"text":"Hunter","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 3 run data modify block 0 1 0 Text1 set value '{"text":"Beef","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 4 run data modify block 0 1 0 Text1 set value '{"text":"Tyler John Potmesil","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 5 run data modify block 0 1 0 Text1 set value '{"text":"Marshmallow","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 6 run data modify block 0 1 0 Text1 set value '{"text":"Johnson","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 7 run data modify block 0 1 0 Text1 set value '{"text":"Teddy","color":"dark_red","bold":false,"italic":false}'
	execute if score out math matches 8 run data modify block 0 1 0 Text1 set value '{"text":"Vagene","color":"dark_red","bold":false,"italic":false}'
	data modify entity @s CustomName set from block 0 1 0 Text1

#gives scoreboard health
	scoreboard players set @s dogHealth 2000000