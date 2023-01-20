#is moving check
execute store result score @s healingMovingFallDistance run data get entity @s FallDistance 10
#execute if score @s healingMovingCrouch matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
execute if score @s healingMovingClimb matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
execute if score @s healingMovingFallDistance matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
execute if score @s healingMovingSprint matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
execute if score @s healingMovingSwim matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
#execute if score @s healingMovingWalk matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
execute if score @s healingMovingWater1 matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
execute if score @s healingMovingWater2 matches 1.. run scoreboard players operation @s healingMoving = .duration healingMoving
#scoreboard players reset @s healingMovingCrouch
scoreboard players reset @s healingMovingClimb
scoreboard players reset @s healingMovingSprint
scoreboard players reset @s healingMovingSwim
#scoreboard players reset @s healingMovingWalk
scoreboard players reset @s healingMovingWater1
scoreboard players reset @s healingMovingWater2


##combat check is in entity hit matching
##non-damaging negative effects activates combat check in the give
##poison & wither activates combat check in the give_dot
#on fire
execute if predicate general:is_on_fire run scoreboard players operation @s healingInCombat = .duration healingInCombat


#gets when the player should heal
scoreboard players reset @s healingApply
scoreboard players operation @s healingApply += .base healingApply
execute if score @s healingInCombat matches 1.. run scoreboard players operation @s healingApply += .inCombat healingApply
execute if score @s healingMoving matches 1.. run scoreboard players operation @s healingApply += .moving healingApply
execute if score @s health <= .lowHealthRequirement healingApply run scoreboard players operation @s healingApply += .lowHealth healingApply

#add healing
scoreboard players add @s healing 1
execute if score @s healingMoving matches 1.. run scoreboard players remove @s healingMoving 1
execute if score @s healingMoving matches ..0 run scoreboard players reset @s healingMoving
execute if score @s healingInCombat matches 1.. run scoreboard players remove @s healingInCombat 1
execute if score @s healingInCombat matches ..0 run scoreboard players reset @s healingInCombat

execute if score @s healing >= @s healingApply unless predicate general:regeneration/2 run function general:apply/healing/give