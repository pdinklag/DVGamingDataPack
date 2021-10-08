# disable mob griefing while there are any creepers near any player, otherwise activate

scoreboard objectives add near_creepers dummy
execute as @a[predicate=dvg:regular_player] run execute at @s store result score @s near_creepers if entity @e[type=minecraft:creeper,distance=..8]

execute if entity @a[scores={near_creepers=1..}] run gamerule mobGriefing false
execute unless entity @a[scores={near_creepers=1..}] run gamerule mobGriefing true
