execute if data entity @s SelectedItem.tag.ee-3 unless score @s ee-3Burst matches 0.. at @s run function cb:game/during/player/skills/hunters/boba_fett/ee-3/ability
execute if data entity @s SelectedItem.tag.concussionRocket unless score @s cRocket matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concussionRocket:1}}]}] unless score @s cRocket matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/concussion_rocket/ability
execute if data entity @s SelectedItem.tag.rocketBarrage unless score @s rBarrage matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rocketBarrage:1}}]}] unless score @s rBarrage matches ..0 run function cb:game/during/player/skills/hunters/boba_fett/rocket_barrage/ability

execute if data entity @s SelectedItem.tag.berserkerArmor unless score @s berserkerArmor matches ..0 run function cb:game/during/player/skills/hunters/guts/berserker_armor/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{berserkerArmor:1}}]}] unless score @s berserkerArmor matches ..0 run function cb:game/during/player/skills/hunters/guts/berserker_armor/ability

execute if data entity @s SelectedItem.tag.laptop unless score @s battery matches ..10 run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{laptop:1}}]}] unless score @s battery matches ..15 run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/ability
execute if data entity @s SelectedItem.tag.getData unless score @s battery matches ..30 run function cb:game/during/player/skills/hunters/hacker/get_data/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{getData:1}}]}] unless score @s battery matches ..30 run function cb:game/during/player/skills/hunters/hacker/get_data/ability
execute if data entity @s SelectedItem.tag.rewireLocation unless score @s battery matches ..28 unless score @s rewireLocationCD matches 1.. run function cb:game/during/player/skills/hunters/hacker/rewire_location/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rewireLocation:1}}]}] unless score @s battery matches ..28 unless score @s rewireLocationCD matches 1.. run function cb:game/during/player/skills/hunters/hacker/rewire_location/ability
execute if data entity @s SelectedItem.tag.playersOvercharge unless score @s battery matches ..36 run function cb:game/during/player/skills/hunters/hacker/players_overcharge/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{playersOvercharge:1}}]}] unless score @s battery matches ..36 run function cb:game/during/player/skills/hunters/hacker/players_overcharge/ability
execute if data entity @s SelectedItem.tag.heartsTransfer unless score @s battery matches ..25 run function cb:game/during/player/skills/hunters/hacker/hearts_transfer/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{heartsTransfer:1}}]}] unless score @s battery matches ..25 run function cb:game/during/player/skills/hunters/hacker/hearts_transfer/ability

execute if data entity @s SelectedItem.tag.dash at @s if score @s dash matches ..0 run function cb:game/during/player/skills/hunters/jett/failed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{dash:1}}]}] at @s if score @s dash matches ..0 run function cb:game/during/player/skills/hunters/jett/failed
execute if data entity @s SelectedItem.tag.dash at @s if score @s dash matches 1.. run function cb:game/during/player/skills/hunters/jett/dash/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{dash:1}}]}] at @s if score @s dash matches 1.. run function cb:game/during/player/skills/hunters/jett/dash/ability
execute if data entity @s SelectedItem.tag.updraft at @s if score @s updraft matches ..0 run function cb:game/during/player/skills/hunters/jett/failed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{updraft:1}}]}] at @s if score @s updraft matches ..0 run function cb:game/during/player/skills/hunters/jett/failed
execute if data entity @s SelectedItem.tag.updraft at @s if score @s updraft matches 1.. run function cb:game/during/player/skills/hunters/jett/updraft/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{updraft:1}}]}] at @s if score @s updraft matches 1.. run function cb:game/during/player/skills/hunters/jett/updraft/ability


execute if data entity @s SelectedItem.tag.timeStop unless score @s timeStop matches ..0 run function cb:game/during/player/skills/hunters/jotaro/time_stop/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{timeStop:1}}]}] unless score @s timeStop matches ..0 run function cb:game/during/player/skills/hunters/jotaro/time_stop/ability
execute if data entity @s SelectedItem.tag.ora unless score @s ora matches ..0 run function cb:game/during/player/skills/hunters/jotaro/ora/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{ora:1}}]}] unless score @s ora matches ..0 run function cb:game/during/player/skills/hunters/jotaro/ora/ability
execute if data entity @s SelectedItem.tag.starFinger unless score @s starFinger matches ..0 run function cb:game/during/player/skills/hunters/jotaro/star_finger/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{starFinger:1}}]}] unless score @s starFinger matches ..0 run function cb:game/during/player/skills/hunters/jotaro/star_finger/ability

execute if data entity @s SelectedItem.tag.yeoui at @s if score @s yeoui matches 1.. run function cb:game/during/player/skills/hunters/mori/yeoui/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{yeoui:1}}]}] at @s if score @s yeoui matches 1.. run function cb:game/during/player/skills/hunters/mori/yeoui/ability
execute if data entity @s SelectedItem.tag.geundoowun at @s if score @s geundoowun matches 1.. run function cb:game/during/player/skills/hunters/mori/geundoowun/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{geundoowun:1}}]}] at @s if score @s geundoowun matches 1.. run function cb:game/during/player/skills/hunters/mori/geundoowun/ability
execute if data entity @s SelectedItem.tag.jeahbongchim at @s if score @s jeahbongchim matches 1.. run function cb:game/during/player/skills/hunters/mori/jeahbongchim/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{jeahbongchim:1}}]}] at @s if score @s jeahbongchim matches 1.. run function cb:game/during/player/skills/hunters/mori/jeahbongchim/ability
execute if data entity @s SelectedItem.tag.yongpyo at @s if score @s yongpyo matches 1.. run function cb:game/during/player/skills/hunters/mori/yongpyo/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{yongpyo:1}}]}] at @s if score @s yongpyo matches 1.. run function cb:game/during/player/skills/hunters/mori/yongpyo/ability
execute if data entity @s SelectedItem.tag.switchMode at @s run function cb:game/during/player/skills/hunters/mori/switch_mode/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{switchMode:1}}]}] at @s run function cb:game/during/player/skills/hunters/mori/switch_mode/ability

execute if data entity @s SelectedItem.tag.sit if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/sit/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{sit:1}}]}] if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/sit/ability
execute if data entity @s SelectedItem.tag.smell unless score @s smell matches ..0 if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/smell/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smell:1}}]}] unless score @s smell matches ..0 if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/smell/ability
execute if data entity @s SelectedItem.tag.goodDog unless score @s goodDog matches ..0 if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/good_dog/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{goodDog:1}}]}] unless score @s goodDog matches ..0 if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/good_dog/ability
execute if data entity @s SelectedItem.tag.sonicHowl unless score @s sonicHowl matches ..0 if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/sonic_howl/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{sonicHowl:1}}]}] unless score @s sonicHowl matches ..0 if score @s dogAlive matches 1 at @s run function cb:game/during/player/skills/hunters/officer/sonic_howl/ability
execute if data entity @s SelectedItem.tag.touchStone unless score @s touchStone matches ..0 if score @s dogAlive matches 0 at @s run function cb:game/during/player/skills/hunters/officer/touch_stone/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{touchStone:1}}]}] unless score @s touchStone matches ..0 if score @s dogAlive matches 0 at @s run function cb:game/during/player/skills/hunters/officer/touch_stone/ability

execute if data entity @s SelectedItem.tag.pepsiSmash unless score @s pepsiSmash matches ..0 at @s run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/ability
execute if data entity @s SelectedItem.tag.pepsiSplash unless score @s pepsiSplash matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_splash/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{pepsiSplash:1}}]}] unless score @s pepsiSplash matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_splash/ability
execute if data entity @s SelectedItem.tag.pepsi unless score @s pepsi matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{pepsi:1}}]}] unless score @s pepsi matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/ability
execute if data entity @s SelectedItem.tag.pepsiCreation unless score @s pepsiCreation matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/ability/check
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{pepsiCreation:1}}]}] unless score @s pepsiCreation matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/ability/check
execute if data entity @s SelectedItem.tag.pepsiCan run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_can/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{pepsiCan:1}}]}] run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_can/ability


execute if data entity @s SelectedItem.tag.vaccineIdentifier unless score @s vIdentifier matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/vaccine_identifier/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{vaccineIdentifier:1}}]}] unless score @s vIdentifier matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/vaccine_identifier/ability
execute if data entity @s SelectedItem.tag.unstableConcoction unless score @s uConcoction matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{unstableConcoction:1}}]}] unless score @s uConcoction matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/ability
execute if data entity @s SelectedItem.tag.bloodCanister unless score @s bCanister matches ..2 run function cb:game/during/player/skills/hunters/vaccinator/blood_canister/ability
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bloodCanister:1}}]}] unless score @s bCanister matches ..2 run function cb:game/during/player/skills/hunters/vaccinator/blood_canister/ability

execute if data entity @s SelectedItem.tag.insult run function cb:game/during/player/objectives/easy/0/finished
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{insult:1}}]}] run function cb:game/during/player/objectives/easy/0/finished


scoreboard players reset @a fungusOnAStick
