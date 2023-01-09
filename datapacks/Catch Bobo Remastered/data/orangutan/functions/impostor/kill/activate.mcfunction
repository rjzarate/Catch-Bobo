function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s killCD = .cooldown stats
execute store result score #ventCD temp run data get storage minecraft:stats tag.ventCooldown
execute store result score #createVentCD temp run data get storage minecraft:stats tag.createVentCooldownIncrease
scoreboard players operation @s ventCD += #ventCD temp
scoreboard players operation @s createVentCD += #createVentCD temp
#change model to inactive
	function general:animate/add/selected_item
#change create vent model to inactive
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["createVent"]}}].Slot
	function general:animate/add/directory

execute at @s run tp @s @p[team=Hunters,gamemode=!spectator,tag=!impostorStun,tag=!invincible]
execute at @s run playsound minecraft:entity.turtle.egg_crack player @a ~ ~ ~ 1 0.75

#specific kits
	execute at @s as @p[team=Hunters,gamemode=!spectator,tag=!impostorStun,tag=!invincible] if entity @s[tag=vaccinator] run clear @s minecraft:tipped_arrow{Tags:["syringe"]}
	execute at @s as @p[team=Hunters,gamemode=!spectator,tag=!impostorStun,tag=!invincible] if entity @s[tag=bobaFett] run item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Jetpack","color":"dark_red","bold":true,"italic":false}',color:3950130},Unbreakable:0b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:7,Damage:432} 1


execute at @s as @p[team=Hunters,gamemode=!spectator,tag=!impostorStun,tag=!invincible] run tag @s add impostorStun

