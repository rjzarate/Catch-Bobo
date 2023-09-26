execute unless score @s battery matches 2001.. run scoreboard players add @s battery 2
execute unless score @s battery matches 2001.. run function hunter:hacker/grayscale/remove/check

execute unless score @s battery matches 2001.. run scoreboard players operation .search adwareLink = @s uuid
execute unless score @s battery matches 2001.. run scoreboard players operation .search uuid = @s uuid
execute unless score @s battery matches 2001.. as @a[gamemode=!spectator,tag=adwared,predicate=hunter:hacker/adware_link_search] run function hunter:hacker/adware/player/give_battery