function general:get_stats
scoreboard players operation .batteryUsage stats *= #20 constant

execute if predicate hunter:hacker/trojan_horse if score @s battery >= .batteryUsage stats run function hunter:hacker/trojan_horse/activate
execute if predicate hunter:hacker/rootkit if score @s battery >= .batteryUsage stats run function hunter:hacker/rootkit/activate
execute if predicate hunter:hacker/ransomware if score @s battery >= .batteryUsage stats run function hunter:hacker/ransomware/activate
execute if predicate hunter:hacker/adware if score @s battery >= .batteryUsage stats run function hunter:hacker/adware/activate
execute if predicate hunter:hacker/spyware if score @s battery >= .batteryUsage stats at @s run function hunter:hacker/spyware/activate

#if activated successfully, checks whether to grayscale some abilities
	execute if score #hackerSuccess temp matches 1 run function hunter:hacker/grayscale/add/check
	scoreboard players reset #hackerSuccess temp