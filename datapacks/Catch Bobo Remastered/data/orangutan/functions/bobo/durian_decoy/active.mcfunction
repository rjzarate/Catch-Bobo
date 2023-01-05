scoreboard players remove @s durianDecoyDuration 1
execute if score @s durianDecoyDuration matches ..0 run function orangutan:bobo/durian_decoy/give_items
execute if score @s durianDecoyDuration matches ..0 run scoreboard players reset @s durianDecoyDuration