function general:get_stats

scoreboard players operation @s[scores={yeouiCD=1..}] yeouiCD += .successfulMeleeHitCooldown yeouiStats

#change to cooldown model
	scoreboard players set in math 1801
	scoreboard players set in1 math 1805
	function math:rng/range
	execute if score @s yeouiCD matches 1.. run scoreboard players operation #CustomModelData temp = out math
	execute if score @s yeouiCD matches 1.. run execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp
	execute if score @s yeouiCD matches 1.. run item modify entity @s weapon.mainhand kit:animate/storage

advancement revoke @s only hunter:mori/damage_yeoui