tag @a[team=Hunters,tag=bobaFett,tag=shooter,gamemode=!spectator] add shot

#visuals and audio
execute as @a[team=Hunters,tag=bobaFett,tag=shooter,gamemode=!spectator] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
#execute at @e[type=minecraft:armor_stand,tag=repeaterCrossbow,sort=nearest,tag=moving] run particle minecraft:block minecraft:end_rod ~ ~1 ~ 0 0 0 1 3

#damage
	execute if entity @s[type=minecraft:player] run scoreboard players operation @s hp_dmg = @e[type=minecraft:marker,tag=ee-3,sort=nearest,tag=moving] ee-3Damage

	execute if entity @s[type=!minecraft:player] run scoreboard players operation #damage temp = @e[type=minecraft:marker,tag=ee-3,sort=nearest,tag=moving] ee-3Damage
	execute if entity @s[type=!minecraft:player] run function general:apply/damage/directory



#in combat
execute as @p[tag=shooter] run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if entity @s[type=minecraft:player] run scoreboard players operation @s healingInCombat = .duration healingInCombat

#kills marker and stops iterations
kill @e[type=minecraft:marker,tag=ee-3,sort=nearest,tag=moving]
scoreboard players set #temp ee-3Iteration 0

#sounds
	playsound minecraft:entity.player.hurt player @a ~ ~ ~ 0.5 1.2

tag @a[tag=shot] remove shot