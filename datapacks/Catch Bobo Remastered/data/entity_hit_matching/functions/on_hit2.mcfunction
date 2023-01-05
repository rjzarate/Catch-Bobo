execute as @p[distance=..1,tag=vaccinator,gamemode=!spectator] run scoreboard players add @s syringeLauncherAmmo 1
execute as @p[distance=..1,tag=vaccinator,gamemode=!spectator,scores={unstableConcoctionDuration=1..}] run function hunter:vaccinator/unstable_concoction/hit
execute if entity @p[distance=..1,tag=vaccinator,gamemode=!spectator] run function hunter:vaccinator/effect/apply_scoreboard