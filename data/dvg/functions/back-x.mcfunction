# compute delta
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s back_dx = @s spawnpos_x
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s back_dx -= @s location_x

execute if entity @a[scores={cmd_back=1,back_dx=1..}] run function dvg:back-x-positive
execute if entity @a[scores={cmd_back=1,back_dx=..-1}] run function dvg:back-x-negative
