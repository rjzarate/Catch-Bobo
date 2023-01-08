#execute if predicate hunter:jett/blade_storm if score @s bladeStormAmmo matches 1.. if score @s bladeStormEquip >= .equipTime20t bladeStormStats run function hunter:jett/blade_storm/activate

execute if predicate hunter:jett/tailwind if score @s tailwindAmmo matches 1.. unless score @s tailwindDuration matches 1.. run function hunter:jett/tailwind/activate
execute if predicate hunter:jett/updraft if score @s updraftAmmo matches 1.. unless score @s updraftDuration matches 1.. run function hunter:jett/updraft/activate