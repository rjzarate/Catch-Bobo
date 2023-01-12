scoreboard players operation #battery temp = @s battery

#trojan horse
	execute if score #battery temp = .trojanHorseBatteryUsage hackerStats run function hunter:hacker/grayscale/remove/trojan_horse

#rootkit
	execute if score #battery temp = .rootkitBatteryUsage hackerStats run function hunter:hacker/grayscale/remove/rootkit

#ransomware
	execute if score #battery temp = .ransomwareBatteryUsage hackerStats run function hunter:hacker/grayscale/remove/ransomware

#adware
	execute if score #battery temp = .adwareBatteryUsage hackerStats run function hunter:hacker/grayscale/remove/adware

#spyware
	execute if score #battery temp = .spywareBatteryUsage hackerStats run function hunter:hacker/grayscale/remove/spyware


scoreboard players set #setInventory temp 0