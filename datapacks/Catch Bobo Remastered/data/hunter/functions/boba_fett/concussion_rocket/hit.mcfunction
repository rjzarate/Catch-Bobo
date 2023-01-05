#visuals and audio
particle minecraft:squid_ink ~ ~ ~ 1.5 1.5 1.5 0.05 15 normal
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 1.25

#effect
scoreboard players operation #radius temp = .radius concussionRocketStats
execute as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity] run function general:apply/distance/radius
execute as @e[type=#general:everything,tag=inRadius] run scoreboard players operation @s blindness = @s blindness
execute as @e[type=#general:everything,tag=inRadius] run scoreboard players operation @s darkness = @s darkness
execute as @e[type=#general:everything,tag=inRadius] run scoreboard players operation @s slowness3 = @s slowness3

execute as @e[type=#general:everything,tag=inRadius] if score @s blindness < .blindness20t concussionRocketStats run scoreboard players operation @s blindness += .blindness20t concussionRocketStats
execute as @e[type=#general:everything,tag=inRadius] if score @s darkness < .darkness20t concussionRocketStats run scoreboard players operation @s darkness += .darkness20t concussionRocketStats
execute as @e[type=#general:everything,tag=inRadius] if score @s slowness3 < .slowness320t concussionRocketStats run scoreboard players operation @s slowness3 += .slowness320t concussionRocketStats

tag @e[type=#general:everything,tag=inRadius] remove inRadius


kill @e[type=minecraft:armor_stand,tag=concussionRocket,sort=nearest,tag=moving]