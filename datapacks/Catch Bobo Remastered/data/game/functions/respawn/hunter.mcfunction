spreadplayers -72 -120 1 2 under 40 true @s[tag=hunter]
tag @s remove spectator
gamemode adventure


#boba fett
	attribute @s[tag=bobaFett] minecraft:generic.max_health base set 24
	attribute @s[tag=bobaFett] minecraft:generic.armor base set 0
	attribute @s[tag=bobaFett] minecraft:generic.attack_damage base set 0
	attribute @s[tag=bobaFett] minecraft:generic.attack_speed base set 4
	attribute @s[tag=bobaFett] minecraft:generic.movement_speed base set 0.10000000149011612
#guts
	attribute @s[tag=guts] minecraft:generic.max_health base set 50
	attribute @s[tag=guts] minecraft:generic.armor base set 0
	attribute @s[tag=guts] minecraft:generic.attack_damage base set 0
	attribute @s[tag=guts] minecraft:generic.attack_speed base set 4
	attribute @s[tag=guts] minecraft:generic.movement_speed base set 0.10000000149011612
#hacker
	attribute @s[tag=hacker] minecraft:generic.max_health base set 30
	attribute @s[tag=hacker] minecraft:generic.armor base set 0
	attribute @s[tag=hacker] minecraft:generic.attack_damage base set 0
	attribute @s[tag=hacker] minecraft:generic.attack_speed base set 4
	attribute @s[tag=hacker] minecraft:generic.movement_speed base set 0.10000000149011612
#jett
	attribute @s[tag=jett] minecraft:generic.max_health base set 26
	attribute @s[tag=jett] minecraft:generic.armor base set 0
	attribute @s[tag=jett] minecraft:generic.attack_damage base set 0
	attribute @s[tag=jett] minecraft:generic.attack_speed base set 4
	attribute @s[tag=jett] minecraft:generic.movement_speed base set 0.10000000149011612
#jotaro
	attribute @s[tag=jotaro] minecraft:generic.max_health base set 40
	attribute @s[tag=jotaro] minecraft:generic.armor base set 0
	attribute @s[tag=jotaro] minecraft:generic.attack_damage base set 0
	attribute @s[tag=jotaro] minecraft:generic.attack_speed base set 4
	attribute @s[tag=jotaro] minecraft:generic.movement_speed base set 0.10000000149011612
	execute if entity @s[tag=jotaro] at @s run summon minecraft:husk ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"noCollide",PersistenceRequired:1b,NoAI:1b,Tags:["starPlatinum","noDamage","noTimeStop"],HandItems:[{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1002,Enchantments:[{}]}},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1002,Enchantments:[{}]}}],CustomName:'{"text":"Star Platinum","color":"dark_red","bold":true,"italic":false}'}
	execute if entity @s[tag=jotaro] run scoreboard players operation @e[type=minecraft:husk,tag=starPlatinum,tag=!finished] uuidLink = @s uuid
	execute if entity @s[tag=jotaro] run tag @e[type=minecraft:husk,tag=starPlatinum,tag=!finished] add finished
#mori
	attribute @s[tag=mori] minecraft:generic.max_health base set 36
	attribute @s[tag=mori] minecraft:generic.armor base set 0
	attribute @s[tag=mori] minecraft:generic.attack_damage base set 0
	attribute @s[tag=mori] minecraft:generic.attack_speed base set 4
	attribute @s[tag=mori] minecraft:generic.movement_speed base set 0.10000000149011612
#officer
	attribute @s[tag=officer] minecraft:generic.max_health base set 40
	attribute @s[tag=officer] minecraft:generic.armor base set 0
	attribute @s[tag=officer] minecraft:generic.attack_damage base set 0
	attribute @s[tag=officer] minecraft:generic.attack_speed base set 4
	attribute @s[tag=officer] minecraft:generic.movement_speed base set 0.10000000149011612
#pepsi man
	attribute @s[tag=pepsiMan] minecraft:generic.max_health base set 36
	attribute @s[tag=pepsiMan] minecraft:generic.armor base set 0
	attribute @s[tag=pepsiMan] minecraft:generic.attack_damage base set 0
	attribute @s[tag=pepsiMan] minecraft:generic.attack_speed base set 4
	attribute @s[tag=pepsiMan] minecraft:generic.movement_speed base set 0.12500000186264515
#vaccinator
	attribute @s[tag=vaccinator] minecraft:generic.max_health base set 28
	attribute @s[tag=vaccinator] minecraft:generic.armor base set 0
	attribute @s[tag=vaccinator] minecraft:generic.attack_damage base set 0
	attribute @s[tag=vaccinator] minecraft:generic.attack_speed base set 4
	attribute @s[tag=vaccinator] minecraft:generic.movement_speed base set 0.10000000149011612


effect give @s minecraft:instant_health 1 100 true