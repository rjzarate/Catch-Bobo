scoreboard players remove @s noxiousTrap 1
scoreboard players reset @s gWarfare

execute at @s run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"Bobo",NoAI:1b,Size:0,Tags:["noxiousTrap","noDamage"],CustomName:'[{"text":"Noxious Trap ","color":"gold","bold":true},{"text":"| ","color":"white","italic":false,"bold":false},{"text":"Duration: ","color":"yellow","italic":false,"bold":false},{"text":"60 Seconds","color":"yellow","bold":true}]',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0 5
execute as @e[type=slime,tag=noxiousTrap,tag=!finished] run scoreboard players set @s noxiousTrapTimer 60
execute as @e[type=slime,tag=noxiousTrap,tag=!finished] run tag @s add finished
execute at @s run playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1