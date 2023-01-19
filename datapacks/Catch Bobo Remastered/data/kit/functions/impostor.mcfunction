function general:clear_modifiers
function general:clear_tags
tag @s add orangutan
tag @s add impostor
team join Orangutans @s
clear @s

#base attributes
attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true

#ability resets
function general:clear_abilities

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Impostor\'s Head","color":"gold","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-1898841623,696667718,-1525750779,1174439044],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdkNWViMGFlYTVkNjFiYTNmZjQ5OTY0MTZhOTAwOTZhOWQ3NzYwOWViY2QzYjMwOGY5MDZhZTg4OGE0NWY2ZCJ9fX0="}]}},HideFlags:1,impostor:1} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Spacesuit","color":"gold","bold":true,"italic":false}',color:16711680},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Spacesuit","color":"gold","bold":true,"italic":false}',color:16711680},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Spacesuit","color":"gold","bold":true,"italic":false}',color:16711680},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1234567890,-1234567890,1234567890,-1234567890]}],HideFlags:71,Unbreakable:1b} 1


item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Kill","color":"gold","bold":true,"italic":false}'},Tags:["impostor","kill","ventCooldown","createVentCooldownIncrease","range","immobilize","immobilizeDuration","immobilizeKill","cooldown","actionbarRegular"],kill:1,createVentCooldownIncrease:20,range:4,ventCooldown:-50,immobilizeDuration:60,cooldown:60,noDrop:1,CustomModelData:100} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .immobilizeDuration20t killStats = .immobilizeDuration stats
scoreboard players operation .immobilizeDuration20t killStats *= #20 constant

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Report Body","color":"gold","bold":true,"italic":false}'},Tags:["impostor","reportBody","chargeUp","duration","activationRequirement","takeNoDamage","activationRequirementNearImmobilizedPlayer","cooldown","actionbarChargeUpDuration"],reportBody:1,chargeUp:10,duration:10,activationRequirementNearImmobilizedPlayerRange:4,cooldown:300,noDrop:1,CustomModelData:101} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.1 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t reportBodyStats = .cooldown stats
scoreboard players operation .duration20t reportBodyStats = .duration stats
scoreboard players operation .chargeUp20t reportBodyStats = .chargeUp stats
scoreboard players operation .cooldown20t reportBodyStats *= #20 constant
scoreboard players operation .duration20t reportBodyStats *= #20 constant
scoreboard players operation .chargeUp20t reportBodyStats *= #20 constant

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Vent","color":"gold","bold":true,"italic":false}'},Tags:["impostor","vent","range","activationRequirement","activationRequirementVent","cooldown","actionbarRegular"],vent:1,range:3,cooldown:75,noDrop:1,CustomModelData:102} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.2 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'[{"text":"Build ","color":"gold","bold":true,"italic":false},{"text":"Red ","color":"red"},{"text":"Vent","color":"gold"}]'},Tags:["impostor","createVent","createRedVent","ventCooldownIncrease","activationRequirement","onGround","ventHealth","ventLifespan","uponDrop","cooldown","actionbarRegular"],createRedVent:1,ventCooldownIncrease:15,ventHealth:10,ventLifespan:450,cooldown:15,CustomModelData:103} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.3 from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with ender_eye{display:{Name:'{"text":"Sabotage O2","color":"gold","bold":true,"italic":false}'},Tags:["impostor","sabotage","sabotageO2","duration","chargeUp","poison2","chargeUpRequirement","twoHuntersAlive","aliveOcelot","ocelot","ocelotHealth","ocelotSpeed","ocelotLifespan","cooldown","uponDrop","actionbarChargeUpDuration"],sabotageO2:1,duration:10,chargeUp:50,poison2:10,ocelotHealth:5,ocelotSpeed:200,ocelotLifespan:60,cooldown:120,CustomModelData:107} 1
item modify entity @s weapon.mainhand kit:description
item modify entity @s weapon.mainhand kit:stats
item replace block 0 0 0 container.4 from entity @s weapon.mainhand
function general:get_stats
scoreboard players operation .cooldown20t sabotageStats = .cooldown stats
scoreboard players operation .duration20t sabotageStats = .duration stats
scoreboard players operation .chargeUp20t sabotageStats = .chargeUp stats
scoreboard players operation .cooldown20t sabotageStats *= #20 constant
scoreboard players operation .duration20t sabotageStats *= #20 constant
scoreboard players operation .chargeUp20t sabotageStats *= #20 constant

item replace entity @s weapon.mainhand with compass{display:{Name:'{"text":"Bobo Finder","color":"gold","bold":true,"italic":false}'},Tags:["impostor","boboFinder"],boboFinder:1,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:0,Y:0,Z:0},noDrop:1} 1
item modify entity @s weapon.mainhand kit:description
item replace block 0 0 0 container.8 from entity @s weapon.mainhand

item replace block 0 0 0 container.5 with minecraft:paper{Tags:["filler"],filler:1}
item replace block 0 0 0 container.6 with minecraft:paper{Tags:["filler"],filler:2}
item replace block 0 0 0 container.7 with minecraft:paper{Tags:["filler"],filler:3}

item replace entity @s weapon.mainhand with minecraft:air
loot give @s mine 0 0 0 air{drop_contents:true}
setblock 0 0 0 yellow_shulker_box{}
clear @s minecraft:paper{Tags:["filler"]}