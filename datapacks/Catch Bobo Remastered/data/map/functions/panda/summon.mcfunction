tp @e[type=panda,tag=po] ~ -100 ~
kill @e[type=panda,tag=po]

summon panda 73.0 61 -442.0 {Invulnerable:1b,Team:"noCollide",PersistenceRequired:1b,NoAI:0b,MainGene:"lazy",HiddenGene:"normal",Rotation:[30F,0F],Tags:["po"],CustomName:'{"text":"Po","color":"aqua","bold":true,"italic":false}',HandItems:[{id:"minecraft:bamboo",Count:1b},{}]}

schedule function map:panda/no_ai 1s