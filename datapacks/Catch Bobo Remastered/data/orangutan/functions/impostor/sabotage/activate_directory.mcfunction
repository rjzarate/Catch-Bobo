#check how many alive hunters there are
	execute store result score #aliveHunters temp if entity @a[team=Hunters,gamemode=!spectator]

execute if predicate orangutan:impostor/sabotage_o2 if score #aliveHunters temp matches 2.. run function orangutan:impostor/sabotage/o2/activate
execute if predicate orangutan:impostor/sabotage_lights if score #aliveHunters temp matches 2.. run function orangutan:impostor/sabotage/lights/activate
execute if predicate orangutan:impostor/sabotage_reactor if score #aliveHunters temp matches 2.. run function orangutan:impostor/sabotage/reactor/activate