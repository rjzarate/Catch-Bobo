function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s oraCD = .cooldown stats
scoreboard players operation @s oraCD += .duration stats
scoreboard players operation @s oraDuration = .duration stats