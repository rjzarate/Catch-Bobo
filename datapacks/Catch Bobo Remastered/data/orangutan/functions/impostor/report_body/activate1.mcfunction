scoreboard players operation @s reportBodyCD = .cooldown20t reportBodyStats
scoreboard players operation @s reportBodyCD += .duration20t reportBodyStats
scoreboard players operation @s reportBodyDuration = .duration20t reportBodyStats
#change model to inactive
	function general:animate/add/selected_item

fill 96 22 -237 92 23 -236 minecraft:cyan_stained_glass

#creates armor stand to teleport impostor back
	execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["reportBody","new"],Duration:20000}
	data modify entity @e[type=minecraft:area_effect_cloud,tag=reportBody,sort=nearest,limit=1,tag=new] Rotation set from entity @s Rotation
	scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=reportBody,sort=nearest,limit=1,tag=new] uuidLink = @s uuid
	tag @e[type=minecraft:armor_stand,tag=reportBody,tag=new] remove new

#teleports players
	tp @a[team=Hunters,tag=!impostorStun] 94 22 -227
	tp @s 94 22 -227

#visual and sound
	execute positioned 94 22 -227 run playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0.8
	title @a[team=Hunters,tag=!impostorStun] times 0 60 20
	title @a[team=Hunters,tag=!impostorStun] title {"text":"DEAD BODY REPORTED","bold":true,"color":"red"}

#stops natural healing
	tag @s remove noNaturalHealing