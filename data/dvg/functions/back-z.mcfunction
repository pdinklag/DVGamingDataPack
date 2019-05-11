# compute delta
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s back_dz = @s spawnpos_z
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s back_dz -= @s location_z

execute if entity @a[scores={cmd_back=1,back_dz=1..}] run function dvg:back-z-positive
execute if entity @a[scores={cmd_back=1,back_dz=..-1}] run function dvg:back-z-negative
