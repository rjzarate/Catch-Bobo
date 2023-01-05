scoreboard players remove @s bB 1
scoreboard players add @s objectiveAbility 1

execute at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.5
execute at @s run particle minecraft:explosion_emitter ~ ~9 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~6 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~3 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~-3 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~-6 ~ 9 0 9 1 3
execute at @s run particle minecraft:explosion_emitter ~ ~-9 ~ 9 0 9 1 3




execute at @s run effect give @a[team=Hunters,distance=..10,gamemode=!spectator] minecraft:blindness 6 0 false
