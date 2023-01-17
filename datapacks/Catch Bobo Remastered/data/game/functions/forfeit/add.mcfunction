#adds forfeit by 1
	execute if entity @s[team=Hunters] run scoreboard players add .hunterForfeit ff 1
	execute if entity @s[team=Orangutans] run scoreboard players add .orangutanForfeit ff 1
	execute if entity @s[team=Orangutans,tag=bobo] run scoreboard players add .boboForfeit ff 1

#check if enough players forfeit
	execute if score .hunterForfeit ff matches 1.. if score .hunterForfeit ff >= .hunterCount ff run function game:win/orangutans
	execute if score .boboForfeit ff matches 1.. if score .orangutanForfeit ff matches 1.. if score .orangutanForfeit ff >= .orangutanCount ff run function game:win/hunters

#tellraw
	execute if entity @s[team=Hunters] if score .hunterForfeit ff < .hunterCount ff run tellraw @a[team=Hunters] ["",{"text":"\n"},{"text":"A Player in your team wants to forfeit:","color":"yellow"},{"text":"\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020"},{"score":{"name":".hunterForfeit","objective":"ff"},"bold":true,"color":"red"},{"text":"/","bold":true},{"score":{"name":".hunterCount","objective":"ff"},"bold":true,"color":"green"},{"text":"\nTo forfeit:\n \u0020"},{"text":"/trigger ff","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ff"}}]

	execute if entity @s[team=Orangutans] if score .orangutanForfeit ff < .orangutanCount ff if score .boboForfeit ff matches 1.. run tellraw @a[team=Orangutans] ["",{"text":"\n"},{"text":"A Player in your team wants to forfeit:","color":"yellow"},{"text":"\n                  "},{"score":{"name":".orangutanForfeit","objective":"ff"},"bold":true,"color":"red"},{"text":"/","bold":true},{"score":{"name":".orangutanCount","objective":"ff"},"bold":true,"color":"green"},{"text":"\n "},{"text":"Bobo","bold":true,"color":"gold"},{"text":" forfeited: ","color":"yellow"},{"text":"TRUE","bold":true,"color":"green"},{"text":"\nTo forfeit:\n  "},{"text":"/trigger ff","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ff"}}]
	execute if entity @s[team=Orangutans] unless score .boboForfeit ff matches 1.. run tellraw @a[team=Orangutans] ["",{"text":"\n"},{"text":"A Player in your team wants to forfeit:","color":"yellow"},{"text":"\n                  "},{"score":{"name":".orangutanForfeit","objective":"ff"},"bold":true,"color":"red"},{"text":"/","bold":true},{"score":{"name":".orangutanCount","objective":"ff"},"bold":true,"color":"green"},{"text":"\n "},{"text":"Bobo","bold":true,"color":"gold"},{"text":" forfeited: ","color":"yellow"},{"text":"FALSE","bold":true,"color":"red"},{"text":"\nTo forfeit:\n  "},{"text":"/trigger ff","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ff"}}]

#sound effect
	execute if entity @s[team=Hunters] as @a[team=Hunters] at @s run playsound minecraft:block.note_block.snare record @s ~ ~ ~ 1 0
	execute if entity @s[team=Orangutans] as @a[team=Orangutans] at @s run playsound minecraft:block.note_block.snare record @s ~ ~ ~ 1 0

scoreboard players reset @s ff