function general:get_stats

scoreboard players operation @s[scores={yeouiCD=1..}] yeouiCD += .successfulMeleeHitCooldown yeouiStats



advancement revoke @s only hunter:mori/damage_yeoui