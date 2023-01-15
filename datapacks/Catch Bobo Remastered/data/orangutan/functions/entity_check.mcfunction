#bobo
execute as @e[type=minecraft:armor_stand,tag=durianDecoy,tag=finished,tag=!timeStoppee] if score @s durianDecoyDuration matches 1.. run function orangutan:bobo/durian_decoy/decoy
execute as @e[type=minecraft:armor_stand,tag=guavaGrenade,tag=finished,tag=!timeStoppee] if score @s guavaGrenadeFuse matches 1.. run function orangutan:bobo/guava_grenade/guava

execute if score .number hotPotatoPlanterFuse > .fuse hotPotatoPlanterFuse as @e[type=minecraft:item,tag=hotPotato] at @s if entity @e[type=#general:hunters,team=Hunters,distance=..1,tag=!spectator] unless entity @a[tag=timeStopper] run function orangutan:bobo/hot_potato_planter/picked_up
execute if score .number hotPotatoPlanterFuse <= .fuse hotPotatoPlanterFuse unless entity @a[tag=timeStopper] run function orangutan:bobo/hot_potato_planter/no_pick_up
execute if score .number hotPotatoPlanterFuse = .fuse hotPotatoPlanterFuse unless entity @a[tag=timeStopper] run function orangutan:bobo/hot_potato_planter/explode
execute if score .number hotPotatoPlanterFuse <= .fuse hotPotatoPlanterFuse unless entity @a[tag=timeStopper] run scoreboard players add .number hotPotatoPlanterFuse 1

#teemo
execute as @e[type=minecraft:arrow,tag=toxicShot] run function orangutan:teemo/toxic_shot/arrow
execute as @e[type=minecraft:arrow,tag=blindingDart] run function orangutan:teemo/blinding_dart/arrow

execute as @e[type=#general:no_players,predicate=orangutan:teemo/toxic_shot_effect] run function orangutan:teemo/toxic_shot/effect
execute as @e[type=#general:no_players,predicate=orangutan:teemo/blinding_dart_effect] run function orangutan:teemo/blinding_dart/effect
execute as @e[type=minecraft:slime,tag=noxiousTrap,tag=finished,tag=!timeStoppee] if score @s noxiousTrapDuration < .armTime noxiousTrapStats at @s if entity @e[team=Hunters,type=#general:hunters,tag=!spectator,distance=..1] run function orangutan:teemo/noxious_trap/stepped_on
execute as @e[type=minecraft:slime,tag=noxiousTrap,tag=finished,tag=!timeStoppee] run function orangutan:teemo/noxious_trap/trap

##impostor
#stunned players
	scoreboard players reset @a[tag=!impostorStun,tag=!displayOnly,scores={impostorStunDuration=1..}] impostorStunDuration
	execute as @a[team=Hunters,gamemode=!spectator,tag=impostorStun] run function orangutan:impostor/kill/stun
#turtle vents
	execute as @e[type=minecraft:turtle,tag=vent] run function orangutan:impostor/vent/turtle

##purple guy
#remnant machine
	execute as @e[type=minecraft:villager,tag=remnantMachine] run function orangutan:purple_guy/remnant_machine/machine/check
#animatronic drowning prevention; every 10t
	execute if score %10t universalTimer matches 0 as @e[type=minecraft:zombie,tag=animatronic,predicate=!orangutan:purple_guy/drowned_conversion_time] run kill @s