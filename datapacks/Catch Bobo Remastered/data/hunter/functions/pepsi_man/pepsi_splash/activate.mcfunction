function general:get_stats

scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s pepsiSplashCD = .cooldown stats
scoreboard players operation @s pepsiSplashCD += .duration stats
scoreboard players operation @s pepsiSplashDuration = .duration stats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

#to hunters
scoreboard players operation #range temp = .range stats
execute at @s as @e[tag=hunter,type=#general:hunters/no_players] run function general:apply/distance/range
execute at @s as @a[tag=hunter,gamemode=!spectator] run function general:apply/distance/range
scoreboard players operation .toHuntersSpeed1 stats *= #20 constant
execute as @e[tag=hunter,type=#general:hunters,tag=inRange] run scoreboard players operation @s speed1 = @s speed1
execute as @e[tag=hunter,type=#general:hunters,tag=inRange] run effect give @s minecraft:instant_health
execute as @e[tag=hunter,type=#general:hunters,tag=inRange] if score @s speed1 < .toHuntersSpeed1 stats run scoreboard players operation @s speed1 += .toHuntersSpeed1 stats
execute as @e[tag=hunter,type=#general:hunters,tag=inRange] at @s run summon minecraft:potion ~ ~2 ~ {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}
tag @e[tag=hunter,type=#general:hunters,tag=inRange] remove inRange

#to orangutans
execute at @s as @e[tag=orangutan,type=#general:orangutans/no_players] run function general:apply/distance/range
execute at @s as @a[tag=orangutan,gamemode=!spectator] run function general:apply/distance/range
scoreboard players operation .toOrangutansSlowness1 stats *= #20 constant
execute as @e[tag=orangutan,type=#general:orangutans,tag=inRange] run scoreboard players operation @s slowness1 = @s slowness1
execute as @e[tag=orangutan,type=#general:orangutans,tag=inRange] run effect give @s minecraft:instant_damage
execute as @e[tag=orangutan,type=#general:orangutans,tag=inRange] if score @s slowness1 < .toOrangutansSlowness1 stats run scoreboard players operation @s slowness1 += .toOrangutansSlowness1 stats
execute as @e[tag=hunter,type=#general:orangutans,tag=inRange] at @s run summon minecraft:potion ~ ~2 ~ {Tags:["noDamage","noTimeStop"],Motion:[0.0,-1.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:5713692}}}

tag @e[tag=orangutan,type=#general:orangutans,tag=inRange] remove inRange