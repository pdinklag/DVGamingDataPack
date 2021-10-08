# spawn
execute as @a[scores={spawn=1..}] at @s run function dvg:trigger/spawn
execute as @a[tag=spawn] in minecraft:overworld run tp @s ~ ~ ~
execute if entity @a[tag=spawn] run spreadplayers ~ ~ 0 3 false @a[tag=spawn]
tag @a[tag=spawn] add fx_teleport
tag @a[tag=spawn] remove spawn
scoreboard players reset @a spawn
scoreboard players enable @a[predicate=dvg:in_home_dimension,predicate=dvg:has_teleport_currency] spawn

# home
execute as @a[scores={home=1..}] at @s run function dvg:trigger/home
tag @a[tag=home] remove home
scoreboard players reset @a home
scoreboard players enable @a[predicate=dvg:in_spawn_dimension,predicate=dvg:has_teleport_currency,distance=..8] home