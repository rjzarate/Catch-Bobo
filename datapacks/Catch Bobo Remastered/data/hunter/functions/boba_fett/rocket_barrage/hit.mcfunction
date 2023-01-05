#visuals and audio
particle minecraft:crit ~ ~ ~ 1 1 1 0.05 15 normal
summon minecraft:creeper ~ ~0.75 ~ {Invulnerable:1b,ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Rocket Barrage","color":"dark_red","bold":true,"italic":false}'}

#damage
scoreboard players operation .search uuid = @e[type=minecraft:armor_stand,tag=rocketBarrage,sort=nearest,tag=moving,limit=1] uuidLink
tag @e[team=Hunters,type=minecraft:player,tag=bobaFett,predicate=general:uuid_search,limit=1] add shot

	scoreboard players operation #radius temp = .radius rocketBarrageStats
	execute as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity] run function general:apply/distance/radius

	scoreboard players operation #damage temp = @s rocketBarrageDamage
	execute as @e[type=#general:everything,tag=!spectator,tag=!hunterTeamImmunity,tag=inRadius] run function general:apply/damage/directory



	tag @e[type=#general:everything,tag=inRadius] remove inRadius



kill @e[type=minecraft:armor_stand,tag=rocketBarrage,sort=nearest,tag=moving]
tag @a[tag=shot] remove shot