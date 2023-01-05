execute if predicate orangutan:teemo/move_quick unless score @s moveQuickCD matches 1.. if score @s recallChargeUp matches 1.. run function orangutan:teemo/recall/deactivate
execute if predicate orangutan:teemo/noxious_trap if predicate general:on_ground if score @s noxiousTrapAmmo matches 1.. if score @s recallChargeUp matches 1.. run function orangutan:teemo/recall/deactivate
execute if predicate orangutan:teemo/noxious_trap if predicate general:on_ground if score @s noxiousTrapAmmo matches 1.. if score @s recallChargeUp matches 1.. run scoreboard players reset @s guerrillaWarfare

execute if predicate orangutan:teemo/move_quick unless score @s moveQuickCD matches 1.. run function orangutan:teemo/move_quick/activate
execute if predicate orangutan:teemo/noxious_trap if predicate general:on_ground if score @s noxiousTrapAmmo matches 1.. run function orangutan:teemo/noxious_trap/activate



execute if predicate orangutan:teemo/recall if score @s recallChargeUp matches 1.. at @s run function orangutan:teemo/recall/deactivate
execute if predicate orangutan:teemo/recall if predicate general:on_ground unless score @s recallCD matches 1.. at @s run function orangutan:teemo/recall/activate
