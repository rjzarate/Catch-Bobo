scoreboard players remove @s eMeeting 1
fill 144 46 -150 148 47 -149 minecraft:cyan_stained_glass

execute at @s run summon armor_stand ~ ~ ~ {Tags:["emergencyMeeting","noTimeStop"],NoGravity:1b,Marker:1b,Invisible:1b}
data modify entity @e[type=armor_stand,tag=emergencyMeeting,sort=nearest,limit=1,tag=!finished] Rotation set from entity @s Rotation
tag @e[type=armor_stand,tag=emergencyMeeting,sort=nearest,limit=1,tag=!finished] add finished

tp @a[team=Hunters,tag=!stun] 146 45 -145

tp @s 146 45 -145

execute at @s run playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0.8
title @a[team=Hunters,tag=!stun] times 0 60 20
title @a[team=Hunters,tag=!stun] title {"text":"DEAD BODY REPORTED","bold":true,"color":"red"}