execute unless entity @a[tag=emergencyMeeting] run scoreboard players add @s tempTime 1
execute if score @s tempTime matches 180.. run kill @s

execute at @a[tag=!stun,tag=!timeStop,team=Bobo,nbt={Inventory:[{Slot:103b,tag:{impostor:1}}]}] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run scoreboard players add @p lightsCount 1