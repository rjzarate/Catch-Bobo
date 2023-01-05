execute as @a[tag=!noDamage,team=Bobo,tag=bobo] if score @s spyglassGlowing matches 1.. run scoreboard players remove @s spyglassGlowing 1
execute as @a[tag=!noDamage,team=Bobo,tag=bobo] if score @s spyglassGlowing matches ..0 run scoreboard players reset @s spyglassGlowing
scoreboard players add @s[tag=!timeStop] spyglass1 1
scoreboard players add @s[tag=!timeStop] spyglass3 1


advancement revoke @s from cb:spyglass