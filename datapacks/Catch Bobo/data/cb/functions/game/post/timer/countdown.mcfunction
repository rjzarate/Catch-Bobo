execute store result bossbar minecraft:post_timer max run scoreboard players get constant gameTP
execute store result bossbar minecraft:post_timer value run scoreboard players get number gameTP

execute at @a[team=Bobo,tag=winner,gamemode=!spectator] run summon firework_rocket ~ ~2 ~ {LifeTime:40,Tags:["noTimeStop","noDamage"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16755200]}]}}}}
execute at @a[team=Hunters,tag=winner,gamemode=!spectator] run summon firework_rocket ~ ~2 ~ {LifeTime:40,Tags:["noTimeStop","noDamage"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11141120]}]}}}}

execute if score number gameTP matches ..0 run scoreboard players set number gameTP 11
execute if score number gameTP matches 11 run function cb:reset
scoreboard players remove number gameTP 1
bossbar set minecraft:initial_timer visible false
bossbar set minecraft:timer visible false
bossbar set minecraft:last_timer visible false
bossbar set minecraft:post_timer visible false
bossbar set minecraft:post_timer visible false
execute if score number gameTP matches 1.. run bossbar set minecraft:post_timer players @a
execute if score number gameTP matches 1.. run bossbar set minecraft:post_timer visible true
