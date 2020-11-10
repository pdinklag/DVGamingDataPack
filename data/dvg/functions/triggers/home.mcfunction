# Make sure player is in the hub
execute as @a[scores={home=1}] unless score @s location_dim matches 0 run tellraw @s ["",{"text":"You can only teleport home home from the hub!","color":"red"}]
execute as @a[scores={home=1}] unless score @s location_dim matches 0 run scoreboard players reset @s home

# Teleport
teleport @a[scores={home=1}] playerspawn

# Effects
execute as @a[scores={home=1}] at @s anchored eyes run particle minecraft:portal ^ ^ ^-1 0 0 0 10 250
execute as @a[scores={home=1}] at @s run playsound minecraft:entity.enderman.teleport player @a

# Print message
execute as @a[scores={home=1}] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" has teleported home."}]

# done
scoreboard players reset @a home
