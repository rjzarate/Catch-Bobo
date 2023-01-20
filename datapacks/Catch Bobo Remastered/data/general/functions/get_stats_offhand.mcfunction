data modify storage minecraft:stats tag set from entity @s Inventory[{Slot:-106b}].tag

execute store result score .cooldown stats run data get storage minecraft:stats tag.cooldown
execute store result score .duration stats run data get storage minecraft:stats tag.duration
execute store result score .chargeUp stats run data get storage minecraft:stats tag.chargeUp

execute store result score .rangeDamage stats run data get storage minecraft:stats tag.rangeDamage
execute store result score .damage stats run data get storage minecraft:stats tag.damage

execute store result score .maxAmmo stats run data get storage minecraft:stats tag.maxAmmo
execute store result score .ammoCooldown stats run data get storage minecraft:stats tag.ammoCooldown
execute store result score .chargeDelay stats run data get storage minecraft:stats tag.chargeDelay
execute store result score .fireRate stats run data get storage minecraft:stats tag.fireRate
execute store result score .explosion stats run data get storage minecraft:stats tag.explosion
execute store result score .fuse stats run data get storage minecraft:stats tag.fuse
execute store result score .range stats run data get storage minecraft:stats tag.range
execute store result score .lifespan stats run data get storage minecraft:stats tag.lifespan
execute store result score .armTime stats run data get storage minecraft:stats tag.armTime

execute store result score .blindness stats run data get storage minecraft:stats tag.blindness
execute store result score .hitsHeadBlindness stats run data get storage minecraft:stats tag.hitsHeadBlindness
execute store result score .blindness stats run data get storage minecraft:stats tag.blindness
execute store result score .fireResistance stats run data get storage minecraft:stats tag.fireResistance
execute store result score .invisibility stats run data get storage minecraft:stats tag.invisibility
execute store result score .poison1 stats run data get storage minecraft:stats tag.poison1
execute store result score .resistance2 stats run data get storage minecraft:stats tag.resistance2
execute store result score .slowness1 stats run data get storage minecraft:stats tag.slowness1
execute store result score .slowness5 stats run data get storage minecraft:stats tag.slowness5
execute store result score .speed5 stats run data get storage minecraft:stats tag.speed5
execute store result score .wither1 stats run data get storage minecraft:stats tag.wither1
execute store result score .weakness100 stats run data get storage minecraft:stats tag.weakness100

execute store result score .successfulHitDuration stats run data get storage minecraft:stats tag.successfulHitDuration

execute store result score .decoy stats run data get storage minecraft:stats tag.decoy

execute store result score .cannonArmCooldown stats run data get storage minecraft:stats tag.cannonArmCooldown
