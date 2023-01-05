function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s unstableConcoctionCD = .cooldown stats
scoreboard players operation @s unstableConcoctionCD += .duration stats
scoreboard players operation @s unstableConcoctionDuration = .duration stats


execute at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 2

