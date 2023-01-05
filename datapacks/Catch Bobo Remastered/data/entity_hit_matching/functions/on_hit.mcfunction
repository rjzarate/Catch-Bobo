#healing for in combat
execute as @p[gamemode=!spectator,distance=..1] run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if entity @s[type=minecraft:player] run scoreboard players operation @s healingInCombat = .duration healingInCombat

#durian decoy slowness and visuals&audio
execute if entity @s[tag=durianDecoy] as @p[gamemode=!spectator,distance=..1,limit=1] run scoreboard players operation @s slowness5 = @s slowness5
execute if entity @s[tag=durianDecoy] as @p[gamemode=!spectator,distance=..1,limit=1] run scoreboard players set @s[scores={slowness5=..59}] slowness5 60
execute if entity @s[tag=durianDecoy] as @p[gamemode=!spectator,distance=..1,limit=1] run playsound minecraft:entity.silverfish.ambient hostile @a ~ ~ ~ 0.5 2
execute if entity @s[tag=durianDecoy] as @p[gamemode=!spectator,distance=..1,limit=1] run execute anchored feet run particle minecraft:mycelium ^ ^0.3 ^ 0.2 0.1 0.2 1 10 normal

#jotaro visuals
execute if entity @p[distance=..1,tag=jotaro,gamemode=!spectator,advancements={hunter:jotaro/damage_punch=true}] run tag @s add jotaroHit
execute if entity @p[distance=..1,tag=jotaro,gamemode=!spectator,advancements={hunter:jotaro/damage_uppercut=true}] run tag @s add jotaroHit