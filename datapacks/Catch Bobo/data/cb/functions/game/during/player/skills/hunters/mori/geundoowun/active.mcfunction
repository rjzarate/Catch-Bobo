scoreboard players add @s[tag=!timeStop] geundoowunTimer 1

execute if score @s[tag=!timeStop] geundoowunTimer matches ..8 at @s run particle dust_color_transition 0.871 0.820 0.106 1 1.000 1.000 1.000 ~ ~1 ~ 2.5 0.5 2.5 0 20 force

execute if score @s[tag=!timeStop] geundoowunTimer matches 9..40 at @s run summon lightning_bolt ~ ~ ~
execute if score @s[tag=!timeStop] geundoowunTimer matches 41.. run kill @s