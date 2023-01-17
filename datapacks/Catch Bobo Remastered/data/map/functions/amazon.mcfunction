kill @e[type=glow_item_frame,tag=headlight]
kill @e[type=armor_stand,tag=package]
kill @e[type=evoker,tag=jomanager]

summon armor_stand 146 33.75 -386 {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["package"],ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{Enchantments:[{}]}}]}
summon glow_item_frame 151 35 -385 {Facing:5b,Invulnerable:1b,Item:{id:"minecraft:white_stained_glass_pane",Count:1b},Tags:["headlight"]}
summon glow_item_frame 151 35 -387 {Facing:5b,Invulnerable:1b,Item:{id:"minecraft:white_stained_glass_pane",Count:1b},Tags:["headlight"]}
summon evoker -49 36 -323 {Rotation:[-90F,0F],Invulnerable:1b,Team:"noCollide",PersistenceRequired:1b,NoAI:1b,Tags:["jomanager"],CustomName:'{"text":"Jomanager","color":"aqua","bold":true,"italic":false}'}