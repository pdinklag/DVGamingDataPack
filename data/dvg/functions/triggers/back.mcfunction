# Make sure player is in the hub
execute as @a[scores={back=1}] unless score @s location_dim matches 0 run tellraw @s ["",{"text":"You can only teleport back home from the hub!","color":"red"}]
execute as @a[scores={back=1}] unless score @s location_dim matches 0 run scoreboard players reset @s back

# Make sure player has ender pearls
tellraw @a[scores={back=1,enderpearls=0}] ["",{"text":"You need an ender pearl to teleport!","color":"red"}]
scoreboard players reset @a[scores={back=1,enderpearls=0}] back

# Teleport
teleport @a[scores={back=1}] playerspawn

# Effects
execute as @a[scores={back=1}] at @s anchored eyes run particle minecraft:portal ^ ^ ^-1 0 0 0 10 250
execute as @a[scores={back=1}] at @s run playsound minecraft:entity.enderman.teleport player @a

# Print message
execute as @a[scores={back=1}] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" has teleported back home."}]

# Spend one ender peal
clear @a[scores={back=1}] minecraft:ender_pearl 1

# done
scoreboard players reset @a back
