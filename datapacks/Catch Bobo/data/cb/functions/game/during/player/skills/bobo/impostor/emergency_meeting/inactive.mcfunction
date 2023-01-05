fill 144 46 -150 148 47 -149 air destroy

tp @s @e[type=armor_stand,tag=emergencyMeeting,sort=nearest,limit=1,tag=finished]

kill @e[type=armor_stand,tag=emergencyMeeting,tag=finished]

tag @s remove emergencyMeeting