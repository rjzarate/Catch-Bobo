execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s dD matches ..0 if score @s dDCD matches 150.. run function cb:game/during/player/skills/bobo/bobo/durian_decoy/active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s dD matches ..0 if score @s dDCD matches 149 run function cb:game/during/player/skills/bobo/bobo/durian_decoy/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s dD matches ..0 if score @s dDCD matches 144 run function cb:game/during/player/skills/bobo/bobo/durian_decoy/kill
execute as @e[type=minecraft:armor_stand,tag=gG,tag=finished,tag=!timeStop] run function cb:game/during/player/skills/bobo/bobo/guava_grenade/active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s gGTimer matches ..-1 run function cb:game/during/player/skills/bobo/bobo/guava_grenade/inactive
execute unless entity @a[tag=!timeStop] if score constant hPTimer matches 7 run function cb:game/during/player/skills/bobo/bobo/hot_potato/effect
execute unless entity @a[tag=!timeStop] if score constant hPTimer matches 0.. run function cb:game/during/player/skills/bobo/bobo/hot_potato/active
execute as @e[tag=!timeStop,type=minecraft:armor_stand,tag=dD,tag=finished] if score @s dDG matches 1.. run function cb:game/during/player/skills/bobo/bobo/durian_decoy/effect
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/jackfruit_jumper/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/blinding_blueberry/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/durian_decoy/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/guava_grenade/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/hot_potato/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/tangerine_teleporter/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/jackfruit_jumper/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s dDV < @s gGTimer run function cb:game/during/player/skills/bobo/bobo/durian_decoy/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s dDV >= @s gGTimer run function cb:game/during/player/skills/bobo/bobo/guava_grenade/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/jackfruit_jumper/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/blinding_blueberry/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/durian_decoy/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/guava_grenade/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/hot_potato/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/tangerine_teleporter/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/objectives_tracker/holding/mainhand
execute as @a[team=Bobo,tag=bobo] run function cb:game/during/player/skills/bobo/bobo/effect

execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor if score @s eMeetingCD matches 299 if score @s eMeeting matches ..0 run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor if score @s eMeetingCD matches 300.. if score @s eMeeting matches ..0 run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/active
scoreboard players reset @a o2Count
execute as @e[type=ocelot,tag=o2,tag=finished] run function cb:game/during/player/skills/bobo/impostor/o2/effect
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/o2/reduce_cd
execute if entity @e[type=ocelot,tag=o2,tag=finished,scores={tempTime=120..}] as @a[team=Hunters,gamemode=!spectator] run function cb:game/during/player/skills/bobo/impostor/o2/active
scoreboard players reset @a lightsCount
execute as @e[type=ocelot,tag=lights,tag=finished] run function cb:game/during/player/skills/bobo/impostor/lights/effect
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/lights/reduce_cd
execute if entity @e[type=ocelot,tag=lights,tag=finished] run function cb:game/during/player/skills/bobo/impostor/lights/active
execute unless entity @e[type=ocelot,tag=lights,tag=finished] run function cb:game/during/player/skills/bobo/impostor/lights/inactive
execute as @a[tag=stun] run function cb:game/during/player/skills/bobo/impostor/kill/effect
scoreboard players reset @a sneak
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/vent/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/blue_vent/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/red_vent/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/destroy_vent/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/kill/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/o2/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/lights/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor if score @s lightsV > @s o2V run function cb:game/during/player/skills/bobo/impostor/lights/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor if score @s lightsV <= @s o2V run function cb:game/during/player/skills/bobo/impostor/o2/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/vent/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/blue_vent/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/red_vent/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/destroy_vent/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/kill/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/o2/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/lights/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] if score @s recallCD matches 120.. if score @s recall matches ..0 run function cb:game/during/player/skills/bobo/teemo/recall/active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] if score @s recallCD matches 119 run function cb:game/during/player/skills/bobo/teemo/recall/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] if score @s recallCD matches 120.. unless score @s recall matches ..0 run function cb:game/during/player/skills/bobo/teemo/guerrilla_warfare/ability
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] if score @s recallCD matches ..119 run function cb:game/during/player/skills/bobo/teemo/guerrilla_warfare/ability
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] if data entity @s SelectedItem.tag.toxicShot unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless score @s toxicShot matches ..0 run function cb:game/during/player/skills/bobo/teemo/toxic_shot/ability/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{toxicShot:1,Charged:0b}}]}] unless score @s toxicShot matches ..0 run function cb:game/during/player/skills/bobo/teemo/toxic_shot/ability/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/blinding_dart/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/toxic_shot/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/move_quick/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/noxious_trap/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/recall/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/guerrilla_warfare/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/move_quick/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/recall/info_active
execute as @e[tag=!stun,tag=!timeStop,type=slime,tag=noxiousTrap,tag=finished] run function cb:game/during/player/skills/bobo/teemo/noxious_trap/active
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/blinding_dart/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/toxic_shot/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/move_quick/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/noxious_trap/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/recall/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/cooldown
execute as @a[team=Hunters] if predicate cb:head/hunters/boba_fett if score @s cRocketCD matches 118 run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/inactive
execute as @a[team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageCD matches 149 run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/ee-3/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/flamethrower/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/jetpack_fuel/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/flamethrower/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/ee-3/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts if data entity @s SelectedItem.tag.repeaterCrossbow unless data entity @s SelectedItem.tag.ChargedProjectiles[0] unless score @s rCrossbow matches ..0 run function cb:game/during/player/skills/hunters/guts/repeater_crossbow/ability/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts if entity @s[nbt={Inventory:[{Slot:-106b,tag:{repeaterCrossbow:1,Charged:0b}}]}] unless score @s rCrossbow matches ..0 run function cb:game/during/player/skills/hunters/guts/repeater_crossbow/ability/offhand
execute as @a[team=Hunters] if predicate cb:head/hunters/guts if score @s berserkerArmorCD matches 89 run function cb:game/during/player/skills/hunters/guts/berserker_armor/inactive
execute as @a[team=Hunters] if predicate cb:head/hunters/guts if score @s berserkerArmorCD matches 90.. if score @s berserkerArmor matches ..0 run function cb:game/during/player/skills/hunters/guts/berserker_armor/active
execute as @a[team=Hunters] if predicate cb:head/hunters/guts if score constant hunterCount matches 1 unless score @s lastPlayer matches 1 run function cb:game/during/player/skills/hunters/guts/alone
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/berserker_armor/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/cannon_arm/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/repeater_crossbow/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/berserker_armor/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/berserker_armor/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/cannon_arm/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/repeater_crossbow/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/check
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/get_data/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/rewire_location/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/players_overcharge/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/hearts_transfer/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/rewire_location/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/get_data/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/rewire_location/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/rewire_location/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/players_overcharge/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/hacker run function cb:game/during/player/skills/hunters/hacker/hearts_transfer/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/marshal/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/blade_storm/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/dash/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/updraft/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/marshal/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/blade_storm/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/dash/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/updraft/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/cooldown
execute as @a[team=Hunters] if predicate cb:head/hunters/jotaro if score @s oraCD matches 90.. if score @s ora matches ..0 run function cb:game/during/player/skills/hunters/jotaro/ora/active
execute as @a[team=Hunters] if predicate cb:head/hunters/jotaro if score @s oraCD matches 89 if score @s ora matches ..0 run function cb:game/during/player/skills/hunters/jotaro/ora/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro if score @s timeStopCD matches 119 if score @s timeStop matches ..0 run function cb:game/during/player/skills/hunters/jotaro/time_stop/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/time_stop/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/ora/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/star_finger/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro if score @s timeStopV <= @s oraV run function cb:game/during/player/skills/hunters/jotaro/time_stop/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro if score @s timeStopV > @s oraV run function cb:game/during/player/skills/hunters/jotaro/ora/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/time_stop/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/ora/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro run function cb:game/during/player/skills/hunters/jotaro/star_finger/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/cooldown
execute as @a[team=Hunters] if predicate cb:head/hunters/mori if score @s jeahbongchimCD matches 60.. if score @s jeahbongchim matches ..0 run function cb:game/during/player/skills/hunters/mori/jeahbongchim/active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori if score @s yongpyoCD matches 119 if score @s yongpyo matches ..0 run function cb:game/during/player/skills/hunters/mori/yongpyo/inactive
execute as @a[team=Hunters] if predicate cb:head/hunters/mori if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 run function cb:game/during/player/skills/hunters/mori/yongpyo/active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori if score @s jeahbongchimCD matches 59 if score @s jeahbongchim matches ..0 run function cb:game/during/player/skills/hunters/mori/jeahbongchim/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/yeoui/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/geundoowun/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/jeahbongchim/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/yongpyo/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/switch_mode/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/jeahbongchim/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/yongpyo/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/geundoowun/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/yeoui/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/geundoowun/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/jeahbongchim/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/yongpyo/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/mori run function cb:game/during/player/skills/hunters/mori/switch_mode/holding/mainhand

execute as @a[team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/dog
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/sit/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/smell/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/good_dog/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/sonic_howl/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/touch_stone/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer if score @s dogAlive matches 0 run function cb:game/during/player/skills/hunters/officer/touch_stone/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer if score @s sonicHowlCD matches 120.. run function cb:game/during/player/skills/hunters/officer/sonic_howl/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/sit/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/smell/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/good_dog/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/sonic_howl/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/touch_stone/holding/mainhand


execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/cooldown
execute as @a[team=Hunters] if predicate cb:head/hunters/pepsi_man if score @s pepsiSmashCD matches 59 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/inactive
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man if entity @s[nbt={SelectedItem:{tag:{pepsiSmash:1,Enchantments:[{lvl:4s,id:"minecraft:knockback"}]}}}] if score @s pepsiSmashCD matches ..59 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/inactive_check
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man if entity @s[nbt={SelectedItem:{tag:{pepsiSmash:1,Enchantments:[{lvl:4s,id:"minecraft:knockback"}]}}}] if score @s pepsiSmash matches 1.. run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/inactive_check
execute as @a[team=Hunters] if predicate cb:head/hunters/pepsi_man if score @s pepsiSmashCD matches 60.. if score @s pepsiSmash matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/active
execute as @a[team=Hunters] if predicate cb:head/hunters/pepsi_man if score @s pepsiCD matches 149 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/inactive
execute as @a[team=Hunters] if predicate cb:head/hunters/pepsi_man if score @s pepsiCD matches 150.. if score @s pepsi matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_splash/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_splash/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_splash/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/pepsi_man run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator if score @s fabricationCD matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/fabrication/ability
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/cooldown
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/fabrication/info
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator if score @s tracker matches 0.. run function cb:game/during/player/skills/hunters/vaccinator/tracker/active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/vaccine_identifier/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/butterfly_needle/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/blood_canister/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/tracker/holding/offhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/tracker/info_active
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/vaccine_identifier/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/butterfly_needle/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/blood_canister/holding/mainhand
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/tracker/holding/mainhand

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_can/holding/mainhand


