# compute delta
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s back_dy = @s spawnpos_y
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s back_dy -= @s location_y

execute if entity @a[scores={cmd_back=1,back_dy=1..}] run function dvg:back-y-positive
execute if entity @a[scores={cmd_back=1,back_dy=..-1}] run function dvg:back-y-negative
