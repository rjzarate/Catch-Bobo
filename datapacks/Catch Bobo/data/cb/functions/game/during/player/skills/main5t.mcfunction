function cb:game/during/player/skills/bobo/bobo/hot_potato/no_pick_up
execute as @e[type=item,tag=hP] at @s if entity @a[distance=..1,team=Hunters,gamemode=!spectator,scores={fullInventory=0},tag=!timeStop] unless score constant hPTimer matches 0.. run function cb:game/during/player/skills/bobo/bobo/hot_potato/activated
function cb:game/during/player/skills/bobo/bobo/tangerine_teleporter/reset

execute as @e[type=item,nbt={OnGround:1b}] if data entity @s Item.tag.teemo at @s run function cb:game/during/player/skills/bobo/teemo/mushroom/spawn
execute as @a[tag=!stun,tag=!timeStop,team=Bobo,tag=teemo] run function cb:game/during/player/skills/bobo/teemo/blinding_dart/ability
execute as @e[type=slime,tag=noxiousTrap] at @s if entity @a[team=!Bobo,distance=..1.5,gamemode=!spectator] run function cb:game/during/player/skills/bobo/teemo/noxious_trap/effect

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 0.. run scoreboard players add @s rBarrageBurst 1
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 1 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 2 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 3 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 4 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 5 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 6 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 7 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 8 at @s run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/burst
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/boba_fett if score @s rBarrageBurst matches 8.. run scoreboard players reset @s rBarrageBurst

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/guts run function cb:game/during/player/skills/hunters/guts/cannon_arm/ability

execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett if score @s jettSneak matches 5.. run function cb:game/during/player/skills/hunters/jett/glide
execute as @a[tag=!stun,tag=!timeStop,team=Hunters] if predicate cb:head/hunters/jett run function cb:game/during/player/skills/hunters/jett/blade_storm/ability

execute as @e[type=area_effect_cloud,tag=geundoowun] run function cb:game/during/player/skills/hunters/mori/geundoowun/active

execute if entity @e[type=arrow,tag=uConcoction] run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/effect
execute as @a[team=Hunters] if predicate cb:head/hunters/vaccinator if score @s uConcoctionCD matches 120.. if score @s uConcoction matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/active