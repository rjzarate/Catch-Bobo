#guts' repeater crossbow | moving the projectile (armor stand)
execute as @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!timeStoppee] at @s run function hunter:guts/repeater_crossbow/projectile
execute as @e[type=minecraft:armor_stand,tag=repeaterCrossbow,tag=!timeStoppee] at @s run function hunter:guts/repeater_crossbow/projectile
#guts' cannon arm | moving the projectile (armor stand)
execute as @e[type=minecraft:armor_stand,tag=cannonArm,tag=!timeStoppee] at @s run function hunter:guts/cannon_arm/projectile
execute as @e[type=minecraft:armor_stand,tag=cannonArm,tag=!timeStoppee] at @s run function hunter:guts/cannon_arm/projectile
execute as @e[type=minecraft:armor_stand,tag=cannonArm,tag=!timeStoppee] at @s run function hunter:guts/cannon_arm/projectile

#jotaro | star platinum zombie
execute as @e[type=minecraft:husk] run function hunter:jotaro/star_platinum/husk
#jotaro's punch/uppercut | successful hit visual
execute as @e[type=minecraft:armor_stand,tag=starPlatinum,tag=!timeStoppee] if score @s starPlatinumPunchDuration matches 1.. run function hunter:jotaro/star_platinum/armor_stand
#jotaro's ora | visual
execute as @e[type=minecraft:armor_stand,tag=ora,tag=!timeStoppee] if score @s oraDuration matches 1.. run function hunter:jotaro/ora/punch
#jotaro's time stop | entities that need to be teleported and not move
execute as @e[type=#general:everything/all,tag=timeStoppee] run function hunter:jotaro/time_stop/active1
execute if score number timeStopDuration matches 1.. run function hunter:jotaro/time_stop/active

#pepsi man's pepsi can | players who have a pepsi can
execute as @a[team=Hunters,gamemode=!spectator,tag=hasPepsiCan,tag=!timeStoppee,advancements={hunter:pepsi_man/pepsi_can=true}] run function hunter:pepsi_man/pepsi_can/activate

#vaccinator arrow check
execute as @e[type=minecraft:arrow,tag=vaccinator] run function hunter:vaccinator/syringe_launcher/arrow

#hacker trojan horse
execute as @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!timeStoppee] run function hunter:hacker/trojan_horse/check
execute as @e[type=minecraft:area_effect_cloud,tag=trojanHorse,tag=!timeStoppee] run function hunter:hacker/trojan_horse/check
execute as @e[type=minecraft:horse,tag=trojanHorse,tag=!timeStoppee] run function hunter:hacker/trojan_horse/horse
execute as @e[type=minecraft:horse,tag=trojanMiniHorse,tag=!timeStoppee] run function hunter:hacker/trojan_horse/mini_horse/lifespan
execute as @e[type=minecraft:horse,tag=trojanMiniHorse,tag=!timeStoppee] at @s as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity,distance=..1,limit=1,sort=nearest,tag=!trojanHorse,tag=!trojanMiniHorse] unless score @s uuid = @e[type=minecraft:horse,tag=trojanMiniHorse,limit=1,sort=nearest] uuidLink unless score @s uuidLink = @e[type=minecraft:horse,tag=trojanMiniHorse,limit=1,sort=nearest] uuidLink run function hunter:hacker/trojan_horse/mini_horse/stepped_on

#hacker rootkit
execute as @e[type=minecraft:area_effect_cloud,tag=rootkit,tag=!timeStoppee] run function hunter:hacker/rootkit/check
execute as @e[type=minecraft:armor_stand,tag=rootkit,tag=!timeStoppee] run function hunter:hacker/rootkit/armor_stand

#hacker ransomware
execute as @e[type=minecraft:area_effect_cloud,tag=ransomware,tag=!timeStoppee] run function hunter:hacker/ransomware/check

#hacker adware
execute as @a[gamemode=!spectator,tag=adwared] if score @s adwareDropped matches 1.. if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["adwareVirus"]}}}] run function hunter:hacker/adware/player/dropped
execute as @a[gamemode=!spectator,tag=adwared] if score @s adwareDropped matches 1.. run scoreboard players reset @s adwareDropped

#mori geundoowun
execute as @e[type=minecraft:marker,tag=geundoowun,tag=!timeStoppee] run function hunter:mori/geundoowun/marker
execute as @a[gamemode=!spectator,scores={geundoowunBuff=1..},tag=!timeStoppee] run function hunter:mori/geundoowun/player/buff
execute as @a[gamemode=!spectator,scores={geundoowunDebuff=1..},tag=!timeStoppee] run function hunter:mori/geundoowun/player/debuff
#mori thunder breaker
execute as @e[type=minecraft:shulker,tag=thunderBreaker,tag=!timeStoppe] at @s run function hunter:mori/thunder_breaker/shulker

##boba fett
	#ee-3 slowcasting
		execute as @e[type=minecraft:marker,tag=ee-3,tag=!timeStoppee] at @s run function hunter:boba_fett/ee-3/slowcast/cast
	#flamethrower small fireball lifespan
		execute as @e[type=minecraft:small_fireball,tag=flamethrower] run function hunter:boba_fett/flamethrower/lifespan
	#concussion rocket | moving the projectile (armor stand)
		execute as @e[type=minecraft:armor_stand,tag=concussionRocket,tag=!timeStoppee] at @s run function hunter:boba_fett/concussion_rocket/projectile
		execute as @e[type=minecraft:armor_stand,tag=concussionRocket,tag=!timeStoppee] at @s run function hunter:boba_fett/concussion_rocket/projectile
		execute as @e[type=minecraft:armor_stand,tag=concussionRocket,tag=!timeStoppee] at @s run function hunter:boba_fett/concussion_rocket/projectile
	#rocket barrage | moving the projectile (armor stand)
		execute as @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=!timeStoppee] at @s run function hunter:boba_fett/rocket_barrage/projectile
		execute as @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=!timeStoppee] at @s run function hunter:boba_fett/rocket_barrage/projectile
		execute as @e[type=minecraft:armor_stand,tag=rocketBarrage,tag=!timeStoppee] at @s run function hunter:boba_fett/rocket_barrage/projectile

##officer
	#dog health
		execute as @e[type=minecraft:wolf,tag=dog] run function hunter:officer/dog/health