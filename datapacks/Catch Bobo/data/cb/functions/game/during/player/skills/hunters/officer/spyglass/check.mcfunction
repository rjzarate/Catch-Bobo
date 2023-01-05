execute if score @s spyglass1 matches 10.. at @s anchored eyes run function cb:game/during/player/skills/hunters/officer/spyglass/raycast

 

execute if score @s spyglass3 matches 3.. if score @s spyglass1 > @s spyglass2 run scoreboard players add @s spyglass2 1
execute if score @s spyglass3 matches 3.. if score @s spyglass1 <= @s spyglass2 run scoreboard players reset @a spyglassGlowing
execute if score @s spyglass3 matches 3.. if score @s spyglass1 <= @s spyglass2 run scoreboard players set @s spyglass1 0
execute if score @s spyglass3 matches 3.. if score @s spyglass1 <= @s spyglass2 run scoreboard players set @s spyglass2 0
execute if score @s spyglass3 matches 3.. if score @s spyglass1 <= @s spyglass2 run scoreboard players set @s spyglass3 0

