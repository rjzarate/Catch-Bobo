execute unless score @s battery matches 2001.. run scoreboard players add @s battery 1
execute unless score @s battery matches 2001.. run function hunter:hacker/grayscale/remove/check

execute unless score @s battery matches 2001.. run scoreboard players operation #uuid temp = @s uuid
execute unless score @s battery matches 2001.. as @a[gamemode=!spectator,tag=adwared,predicate=general:uuid_search] run function hunter:hacker/adware/player/give_battery