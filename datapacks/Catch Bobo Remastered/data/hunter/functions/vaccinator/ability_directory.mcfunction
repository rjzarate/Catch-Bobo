execute if predicate hunter:vaccinator/overloaded_brewing if score @s overloadedBrewing matches 0..3 unless predicate general:is_sneaking run function hunter:vaccinator/overloaded_brewing/increase
execute if predicate hunter:vaccinator/overloaded_brewing if score @s overloadedBrewing matches 1..4 if predicate general:is_sneaking run function hunter:vaccinator/overloaded_brewing/decrease

execute if predicate hunter:vaccinator/self_diagnose if score @s syringeLauncherAmmo > @s overloadedBrewing unless score @s selfDiagnoseCD matches 1.. run function hunter:vaccinator/self_diagnose/activate
execute if predicate hunter:vaccinator/unstable_concoction unless score @s unstableConcoctionCD matches 1.. run function hunter:vaccinator/unstable_concoction/activate