# compute delta
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s dx = @s back_x

execute if entity @a[scores={cmd_back=1,dx=1..}] run function dvg:back-x-positive
execute if entity @a[scores={cmd_back=1,dx=..-1}] run function dvg:back-x-negative
