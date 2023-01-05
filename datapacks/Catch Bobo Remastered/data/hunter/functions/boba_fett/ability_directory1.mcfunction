##ee-3
execute if predicate hunter:boba_fett/ee-3 if score @s ee-3Ammo matches 1.. unless score @s ee-3FireRate matches 1.. unless score @s ee-3BurstFireRate matches 1.. run function hunter:boba_fett/ee-3/fire

#flamethrower
execute if predicate hunter:boba_fett/flamethrower unless predicate general:fall_flying run function hunter:boba_fett/flamethrower/charge