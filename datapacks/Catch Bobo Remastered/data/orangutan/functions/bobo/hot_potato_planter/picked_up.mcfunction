kill @s
scoreboard players set .number hotPotatoPlanterFuse 0
scoreboard players reset @a[tag=hunter] hotPotatoDropped

execute as @a[tag=orangutan] at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2
tellraw @a[tag=orangutan] ["",{"text":"A ","color":"yellow"},{"text":"Hunter ","bold":true,"color":"dark_red"},{"text":"picked up a ","color":"yellow"},{"text":"Hot Potato","bold":true,"color":"gold"},{"text":"!","color":"yellow"}]

give @a[tag=hunter,gamemode=!spectator] baked_potato{display:{Name:'{"text":"Hot Potato","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Description: ","color":"green","italic":false},{"text":"I\'m going to explode! Drop me","color":"gray"}]','{"text":" before I explode inside your inventory.","color":"gray","italic":false}']},Tags:["hotPotato"],hotPotato:1,Enchantments:[{}]} 1