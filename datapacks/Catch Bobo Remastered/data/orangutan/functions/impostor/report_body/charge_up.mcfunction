execute if entity @p[tag=impostorStun,distance=..4] run scoreboard players remove @s reportBodyChargeUp 1
execute unless entity @p[tag=impostorStun,distance=..4] if score @s reportBodyChargeUp matches 1.. run function orangutan:impostor/report_body/deactivate
execute unless entity @s[advancements={hunter:jotaro/damage_taken=true}] if score @s reportBodyChargeUp matches 1.. run function orangutan:impostor/report_body/deactivate
execute if score @s reportBodyChargeUp matches ..0 run function orangutan:impostor/report_body/activate1