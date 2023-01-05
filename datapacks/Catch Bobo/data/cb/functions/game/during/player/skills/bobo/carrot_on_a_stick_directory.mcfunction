execute if data entity @s SelectedItem.tag.jackfruitJumper run function cb:game/during/player/skills/bobo/bobo/jackfruit_jumper/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{jackfruitJumper:1}}]}] run function cb:game/during/player/skills/bobo/bobo/jackfruit_jumper/ability

execute if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.starfruitSwapper unless score @s sS matches ..0 unless block ~ ~ ~ lava run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/ability
execute if entity @s[nbt={OnGround:1b,Inventory:[{Slot:-106b,tag:{starfruitSwapper:1}}]}] unless score @s sS matches ..0 unless block ~ ~ ~ lava run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/ability
execute if data entity @s[nbt={OnGround:0b}] SelectedItem.tag.starfruitSwapper unless score @s sS matches ..0 run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/failed
execute if entity @s[nbt={OnGround:0b,Inventory:[{Slot:-106b,tag:{starfruitSwapper:1}}]}] unless score @s sS matches ..0 run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/failed


execute if data entity @s SelectedItem.tag.blindingBlueberry unless score @s bB matches ..0 run function cb:game/during/player/skills/bobo/bobo/blinding_blueberry/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{blindingBlueberry:1}}]}] unless score @s bB matches ..0 run function cb:game/during/player/skills/bobo/bobo/blinding_blueberry/ability

execute if data entity @s SelectedItem.tag.durianDecoy unless score @s dD matches ..0 run function cb:game/during/player/skills/bobo/bobo/durian_decoy/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{durianDecoy:1}}]}] unless score @s dD matches ..0 run function cb:game/during/player/skills/bobo/bobo/durian_decoy/ability

execute if data entity @s SelectedItem.tag.guavaGrenade unless score @s gG matches ..0 unless score @s gGTimer matches 0.. run function cb:game/during/player/skills/bobo/bobo/guava_grenade/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{guavaGrenade:1}}]}] unless score @s gG matches ..0 unless score @s gGTimer matches 0.. run function cb:game/during/player/skills/bobo/bobo/guava_grenade/ability

execute if data entity @s SelectedItem.tag.hotPotato unless score @s hP matches ..0 run function cb:game/during/player/skills/bobo/bobo/hot_potato/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{hotPotato:1}}]}] unless score @s hP matches ..0 run function cb:game/during/player/skills/bobo/bobo/hot_potato/ability

execute if data entity @s SelectedItem.tag.tangerineTeleporter unless score @s tT matches ..0 run function cb:game/during/player/skills/bobo/bobo/tangerine_teleporter/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{tangerineTeleporter:1}}]}] unless score @s tT matches ..0 run function cb:game/during/player/skills/bobo/bobo/tangerine_teleporter/ability

execute if data entity @s SelectedItem.tag.vent unless score @s vent matches ..0 if score @s blueVentNear matches 1 if score @s blueVentCount matches 2 if entity @s[tag=!emergencyMeeting] run function cb:game/during/player/skills/bobo/impostor/vent/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{vent:1}}]}] unless score @s vent matches ..0 if score @s blueVentNear matches 1 if score @s blueVentCount matches 2 if entity @s[tag=!emergencyMeeting] run function cb:game/during/player/skills/bobo/impostor/vent/ability
execute if data entity @s SelectedItem.tag.vent unless score @s vent matches ..0 if score @s redVentNear matches 1 if score @s redVentCount matches 2 if entity @s[tag=!emergencyMeeting] run function cb:game/during/player/skills/bobo/impostor/vent/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{vent:1}}]}] unless score @s vent matches ..0 if score @s redVentNear matches 1 if score @s redVentCount matches 2 if entity @s[tag=!emergencyMeeting] run function cb:game/during/player/skills/bobo/impostor/vent/ability

execute if data entity @s SelectedItem.tag.destroyVent unless score @s destroyVent matches ..0 if score @s ventCount matches 1 run function cb:game/during/player/skills/bobo/impostor/destroy_vent/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{destroyVent:1}}]}] unless score @s destroyVent matches ..0 if score @s ventCount matches 1 run function cb:game/during/player/skills/bobo/impostor/destroy_vent/ability
execute if entity @s[nbt={OnGround:1b}] if data entity @s SelectedItem.tag.blueVent unless score @s blueVent matches ..0 at @s unless entity @e[type=slime,distance=..11,tag=vent] run function cb:game/during/player/skills/bobo/impostor/blue_vent/ability
execute if entity @s[nbt={OnGround:1b}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{blueVent:1}}]}] unless score @s blueVent matches ..0 at @s unless entity @e[type=slime,distance=..11,tag=vent] run function cb:game/during/player/skills/bobo/impostor/blue_vent/ability
execute if entity @s[nbt={OnGround:1b}] if data entity @s SelectedItem.tag.redVent unless score @s redVent matches ..0 at @s unless entity @e[type=slime,distance=..11,tag=vent] run function cb:game/during/player/skills/bobo/impostor/red_vent/ability
execute if entity @s[nbt={OnGround:1b}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{redVent:1}}]}] unless score @s redVent matches ..0 at @s unless entity @e[type=slime,distance=..11,tag=vent] run function cb:game/during/player/skills/bobo/impostor/red_vent/ability
execute if entity @s[nbt={OnGround:1b}] if data entity @s SelectedItem.tag.destroyVent unless score @s destroyVent matches ..0 if score @s ventNear matches 1.. run function cb:game/during/player/skills/bobo/impostor/destroy_vent/ability
execute if entity @s[nbt={OnGround:1b}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{destroyVent:1}}]}] unless score @s destroyVent matches ..0 if score @s ventNear matches 1.. run function cb:game/during/player/skills/bobo/impostor/destroy_vent/ability
execute if data entity @s SelectedItem.tag.kill unless score @s kill matches ..0 at @s if entity @a[team=Hunters,gamemode=!spectator,tag=!stun,tag=!invincible,distance=..5] run function cb:game/during/player/skills/bobo/impostor/kill/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{kill:1}}]}] unless score @s kill matches ..0 at @s if entity @a[team=Hunters,gamemode=!spectator,tag=!stun,tag=!invincible,distance=..5] run function cb:game/during/player/skills/bobo/impostor/kill/ability
execute if data entity @s SelectedItem.tag.emergencyMeeting unless score @s eMeeting matches ..0 at @s if entity @a[team=Hunters,gamemode=!spectator,tag=stun,distance=..5] unless entity @a[tag=emergencyMeeting] run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{emergencyMeeting:1}}]}] unless score @s eMeeting matches ..0 at @s if entity @a[team=Hunters,gamemode=!spectator,tag=stun,distance=..5] unless entity @a[tag=emergencyMeeting] run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/ability
execute if data entity @s SelectedItem.tag.o2 unless score @s o2 matches ..0 run function cb:game/during/player/skills/bobo/impostor/o2/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{o2:1}}]}] unless score @s o2 matches ..0 run function cb:game/during/player/skills/bobo/impostor/o2/ability
execute if data entity @s SelectedItem.tag.lights unless score @s lights matches ..0 run function cb:game/during/player/skills/bobo/impostor/lights/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{lights:1}}]}] unless score @s lights matches ..0 run function cb:game/during/player/skills/bobo/impostor/lights/ability

execute if data entity @s SelectedItem.tag.moveQuick unless score @s moveQuick matches ..0 run function cb:game/during/player/skills/bobo/teemo/move_quick/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{moveQuick:1}}]}] unless score @s moveQuick matches ..0 run function cb:game/during/player/skills/bobo/teemo/move_quick/ability
execute if entity @s[nbt={OnGround:1b}] if data entity @s SelectedItem.tag.noxiousTrap unless score @s noxiousTrap matches ..0 run function cb:game/during/player/skills/bobo/teemo/noxious_trap/ability
execute if entity @s[nbt={OnGround:1b}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{noxiousTrap:1}}]}] unless score @s noxiousTrap matches ..0 run function cb:game/during/player/skills/bobo/teemo/noxious_trap/ability
execute if entity @s[nbt={OnGround:1b}] if data entity @s SelectedItem.tag.recall unless score @s recall matches ..0 run function cb:game/during/player/skills/bobo/teemo/recall/ability
execute if entity @s[nbt={OnGround:1b}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{recall:1}}]}] unless score @s recall matches ..0 run function cb:game/during/player/skills/bobo/teemo/recall/ability

execute if data entity @s SelectedItem.tag.list run function cb:game/during/player/skills/bobo/bobo/list
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{list:1}}]}] run function cb:game/during/player/skills/bobo/bobo/list
execute if data entity @s SelectedItem.tag.wateringCan run function cb:game/during/player/objectives/medium/10/check
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{wateringCan:1}}]}] run function cb:game/during/player/objectives/medium/10/check
execute if data entity @s SelectedItem.tag.scream run function cb:game/during/player/objectives/hard/2/check
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{scream:1}}]}] run function cb:game/during/player/objectives/hard/2/check
execute if data entity @s SelectedItem.tag.startLastObjective run function cb:game/during/player/skills/bobo/bobo/start_last_objective/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{startLastObjective:1}}]}] run function cb:game/during/player/skills/bobo/bobo/start_last_objective/ability

scoreboard players reset @a carrotOnAStick
