##now items are both given
#execute if predicate hunter:jotaro/star_platinum_uppercut unless score @s swapCD matches 1.. run function hunter:jotaro/ability_swap/star_platinum_punch
#execute if predicate hunter:jotaro/star_platinum_punch unless score @s swapCD matches 1.. run function hunter:jotaro/ability_swap/star_platinum_uppercut
execute if predicate hunter:jotaro/star_finger unless score @s starFingerCD matches 1.. run function hunter:jotaro/star_finger/activate
execute if predicate hunter:jotaro/ora unless score @s oraCD matches 1.. run function hunter:jotaro/ora/activate

execute if predicate hunter:jotaro/time_stop if score @s timeStopChargeUp matches 1.. at @s run function hunter:jotaro/time_stop/deactivate
execute if predicate hunter:jotaro/time_stop unless score @s timeStopCD matches 1.. unless entity @a[tag=timeStopper] run function hunter:jotaro/time_stop/activate