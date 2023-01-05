#changes health and inserts it into scoreboard
	execute unless predicate hunter:officer/dog_health store result score #health dogHealth run function hunter:officer/dog/damage

#kill if dog has no scoreboard health
	execute if score @s dogHealth matches ..0 run kill @s

#heal if scoreboard health is low
	execute if score @s[tag=!timeStoppee] dogHealth matches ..1999999 run function hunter:officer/dog/heal

