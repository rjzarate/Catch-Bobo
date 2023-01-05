function cb:game/during/player/skills/hunters/count

execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if score @s carrotOnAStick matches 1.. run function cb:game/during/player/skills/bobo/carrot_on_a_stick_directory
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if score @s fungusOnAStick matches 1.. run function cb:game/during/player/skills/hunters/warped_fungus_on_a_stick_directory
execute as @a[team=Bobo,tag=bobo] unless score constant gameInProgress matches 2 run function cb:game/during/player/skills/bobo/bobo/bossbar
execute as @a[team=Bobo,tag=bobo] if score @s jJ matches 0 if predicate cb:jump_boost run effect clear @s jump_boost
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=bobo] if score @s jJ matches 1 run function cb:game/during/player/skills/bobo/bobo/jackfruit_jumper/active

scoreboard players reset @a ventNear
scoreboard players reset @a blueVentNear
scoreboard players reset @a redVentNear
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/destroy_vent/effect
scoreboard players reset @a blueVentCount
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/blue_vent/effect
scoreboard players reset @a redVentCount
execute as @a[tag=!stun,tag=!timeStop,team=Bobo] if predicate cb:head/bobo/impostor run function cb:game/during/player/skills/bobo/impostor/red_vent/effect

execute as @e[type=minecraft:area_effect_cloud,tag=mushroom] at @s if entity @a[tag=!stun,tag=!timeStop,team=!Bobo,gamemode=!spectator,distance=..1.5] run function cb:game/during/player/skills/bobo/teemo/mushroom/effect
function cb:game/during/player/skills/bobo/teemo/blinding_dart/damage
function cb:game/during/player/skills/bobo/teemo/toxic_shot/damage

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s jetpackFuelUsed matches 0.. run function cb:game/during/player/skills/hunters/boba_fett/jetpack_fuel/check
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett run function cb:game/during/player/skills/hunters/boba_fett/flamethrower/check
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s ee-3Burst matches 0.. run scoreboard players add @s ee-3Burst 1
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3 matches 1.. if score @s ee-3Burst matches 1 at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/failed
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3 matches ..0 if score @s ee-3Burst matches 1 at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3 matches 1.. if score @s ee-3Burst matches 6 at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/failed
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3 matches ..0 if score @s ee-3Burst matches 6 at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3 matches 1.. if score @s ee-3Burst matches 11 at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/failed
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3 matches ..0 if score @s ee-3Burst matches 11 at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/burst




execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s ee-3Burst matches 21.. run scoreboard players reset @s ee-3Burst
execute as @e[type=armor_stand,tag=concussionRocket,tag=finished,tag=!timeStop] at @s run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/active
execute as @e[type=armor_stand,tag=rocketBarrage,tag=finished,tag=!timeStop] at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/active





execute as @a[tag=!stun,tag=!timeStop,team=Hunters] run function cb:game/during/player/skills/hunters/guts/dragonslayer
execute as @a[team=Hunters] run function cb:game/during/player/skills/hunters/guts/cannon_arm/sound
function cb:game/during/player/skills/hunters/guts/repeater_crossbow/damage



execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/marshal/check

execute as @a at @s run function cb:game/during/player/skills/hunters/jotaro/time_stop/sound
execute as @a[tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jotaro at @s run function cb:game/during/player/skills/hunters/jotaro/star_platinum
execute as @e[tag=timeStop,tag=!noTimeStop] at @s run function cb:game/during/player/skills/hunters/jotaro/time_stop/effect


execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/officer run function cb:game/during/player/skills/hunters/officer/spyglass/check

execute as @a[team=Hunters] if predicate cb:head/hunters/vaccinator run function cb:game/during/player/skills/hunters/vaccinator/immunity
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator if data entity @s SelectedItem.tag.butterflyNeedle unless score @s bNeedle matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/butterfly_needle/ability
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/vaccinator if entity @s[nbt={Inventory:[{Slot:-106b,tag:{butterflyNeedle:1}}]}] unless score @s bNeedle matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/butterfly_needle/ability

execute as @e[type=arrow,nbt={Color:14605868},tag=!damage] run function cb:game/during/player/skills/hunters/vaccinator/damage

