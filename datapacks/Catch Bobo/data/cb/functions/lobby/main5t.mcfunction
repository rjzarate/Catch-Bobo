effect give @a[team=Lobby] minecraft:invisibility 1 0 true

execute unless score constant gameStarted matches 1 run function cb:lobby/start/player
execute if score constant gameStarted matches 1 unless score constant gamePickingC matches 1 unless score constant gameInProgress matches 1 run function cb:lobby/choose_team/player
execute if score constant gamePickingC matches 1 if score constant gameStarted matches 1 unless score constant gameInProgress matches 1 run function cb:lobby/choose_class/player

function cb:lobby/start/info