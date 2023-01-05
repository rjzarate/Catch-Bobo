function cb:general/arrows

execute if entity @a[tag=emergencyMeeting] as @a[team=!Hunters,tag=!timeStop,tag=!stun] run function cb:general/regeneration/0
execute unless entity @a[tag=emergencyMeeting] as @a[tag=!timeStop,tag=!stun] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{pepsiMan:1}}]},scores={pepsi=..0,pepsiCD=120..}] run function cb:general/regeneration/0

scoreboard players reset @a crouch
scoreboard players reset @a sprint
scoreboard players reset @a swim
scoreboard players reset @a walk
scoreboard players reset @a walkOnWater
scoreboard players reset @a walkUnderWater

scoreboard players reset @a runningCheck
scoreboard players reset @a walkingCheck