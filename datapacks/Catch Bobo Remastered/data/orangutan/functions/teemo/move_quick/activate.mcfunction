function general:get_stats

scoreboard players operation .duration stats *= #20 constant
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s moveQuickCD = .cooldown stats
scoreboard players operation @s moveQuickCD += .duration stats
scoreboard players operation @s moveQuickDuration = .duration stats
scoreboard players operation .speed5 stats *= #20 constant
scoreboard players operation @s speed5 += .speed5 stats

execute at @s run playsound minecraft:item.axe.strip player @a ~ ~ ~ 1 2