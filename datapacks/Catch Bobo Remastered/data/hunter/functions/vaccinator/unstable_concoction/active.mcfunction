execute at @s run particle minecraft:ambient_entity_effect ~ ~1 ~ 0.2 0.5 0.2 1 1
execute unless score @s unstableConcoction matches 2000.. run scoreboard players add @s unstableConcoction 1

scoreboard players remove @s unstableConcoctionDuration 1
execute if score @s unstableConcoctionDuration matches ..0 at @s run playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 2
execute if score @s unstableConcoctionDuration matches ..0 run scoreboard players reset @s unstableConcoction
execute if score @s unstableConcoctionDuration matches ..0 run scoreboard players reset @s unstableConcoctionDuration