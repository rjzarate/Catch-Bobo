function general:get_stats

scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s blindingBlueberryDurianDecoyCD = .cooldown stats
scoreboard players operation @s blindingBlueberryDurianDecoyCD += .duration stats
scoreboard players operation @s blindingBlueberryDuration = .duration stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

execute at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.5
execute at @s run particle minecraft:explosion_emitter ~ ~9 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~6 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~3 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~-3 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~-6 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~-9 ~ 9 0 9 1 3

scoreboard players operation #range temp = .range stats
execute at @s as @e[team=Hunters,type=#general:hunters/no_players] run function general:apply/distance/range
execute at @s as @a[team=Hunters,gamemode=!spectator] run function general:apply/distance/range
scoreboard players operation .blindness stats *= #20 constant
scoreboard players operation .slowness1 stats *= #20 constant
execute as @e[team=Hunters,type=#general:hunters,tag=inRange] run scoreboard players operation @s blindness = @s blindness
execute as @e[team=Hunters,type=#general:hunters,tag=inRange] run scoreboard players operation @s slowness1 = @s slowness1
execute as @e[team=Hunters,type=#general:hunters,tag=inRange] if score @s blindness < .blindness stats run scoreboard players operation @s blindness += .blindness stats
execute as @e[team=Hunters,type=#general:hunters,tag=inRange] if score @s slowness1 < .slowness1 stats run scoreboard players operation @s slowness1 += .slowness1 stats
tag @e[team=Hunters,type=#general:hunters,tag=inRange] remove inRange

