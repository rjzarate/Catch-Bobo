execute if data entity @s[scores={cannonArmUsed=1..}] SelectedItem.tag.cannonArm at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 3 1.25

scoreboard players reset @s cannonArmUsed

