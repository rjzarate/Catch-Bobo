function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s geundoowunCD = .cooldown stats
scoreboard players operation @s geundoowunCD += .duration stats
scoreboard players operation @s geundoowunDuration = .duration stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

playsound minecraft:item.trident.thunder player @a ~ 150 ~ 9 0.5

scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:marker,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s

execute rotated 0 0 positioned ^ ^ ^39 run function hunter:mori/geundoowun/summon
execute rotated 90 0 positioned ^ ^ ^39 run function hunter:mori/geundoowun/summon
execute rotated 180 0 positioned ^ ^ ^39 run function hunter:mori/geundoowun/summon
execute rotated -90 0 positioned ^ ^ ^39 run function hunter:mori/geundoowun/summon
summon minecraft:marker ~40 0 ~40 {Tags:["geundoowun","timeStoppable"]}

scoreboard players operation @e[type=minecraft:ghast,tag=!finished,tag=geundoowun] uuidLink = #uuid temp
scoreboard players operation @e[type=minecraft:marker,tag=!finished,tag=geundoowun] uuidLink = #uuid temp
tag @e[type=minecraft:ghast,tag=!finished,tag=geundoowun] add finished
tag @e[type=minecraft:marker,tag=!finished,tag=geundoowun] add finished


#turns item into noeseon
	clear @s minecraft:ender_eye{Tags:["geundoowun"]}
	data remove storage minecraft:inventory SelectedItem
	data modify storage minecraft:inventory SelectedItem set from entity @s SelectedItem
	execute if data storage minecraft:inventory SelectedItem run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

	item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Noeseon","color":"dark_red","bold":true,"italic":false}'},Tags:["mori","noeseon","chargeUp","duration","chargeUpRequirement","lightning","cooldown","actionbarSpecial"],chargeUp:10,duration:5,lightningAmount:4,lightningLastGlowing:5,cooldown:50,noDrop:1,CustomModelData:1811} 1
	item modify entity @s weapon.mainhand kit:description
	item modify entity @s weapon.mainhand kit:stats

	execute if data storage minecraft:inventory SelectedItem run loot give @s mine 0 0 0 air{drop_contents:true}


	execute at @s anchored eyes run particle minecraft:item minecraft:ender_eye{CustomModelData:1810} ^ ^-0.5 ^0.4 0.25 0.15 0.25 0 10 normal
	execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.75 1.5