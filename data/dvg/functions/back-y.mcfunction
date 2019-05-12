# compute delta
execute as @a[scores={cmd_back=1}] run scoreboard players operation @s dy = @s back_y

execute if entity @a[scores={cmd_back=1,dy=1..}] run function dvg:back-y-positive
execute if entity @a[scores={cmd_back=1,dy=..-1}] run function dvg:back-y-negative
