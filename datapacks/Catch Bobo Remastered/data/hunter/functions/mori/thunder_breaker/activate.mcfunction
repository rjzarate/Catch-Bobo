function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s thunderBreakerCD = .cooldown stats
scoreboard players operation @s thunderBreakerCD += .duration stats
scoreboard players operation @s thunderBreakerDuration = .duration stats

#speed2
scoreboard players operation .speed2 stats *= #20 constant
scoreboard players operation @s speed2 = @s speed2
execute if score @s speed2 < .speed2 stats run scoreboard players operation @s speed2 = .speed2 stats

execute at @s run playsound minecraft:item.trident.riptide_2 player @a ~ ~ ~ 1 1