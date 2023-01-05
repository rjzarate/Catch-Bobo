scoreboard players remove @s dogWhistleDuration 1

execute unless entity @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run function hunter:officer/dog_whistle/deactivate
execute if score @s dogWhistleDuration matches ..0 run function hunter:officer/dog_whistle/deactivate
