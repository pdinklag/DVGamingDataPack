# Temporary variables
scoreboard objectives add near_home dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

# Make sure player isn't already in the hub
tellraw @a[scores={hub=1,location_dim=0}] ["",{"text":"You are already in the hub!","color":"red"}]
scoreboard players reset @a[scores={hub=1,location_dim=0}] hub

# Make sure player is in his home dimension
execute as @a[scores={hub=1}] unless score @s location_dim = @s spawn_dim run tellraw @s ["",{"text":"You need to be in your home dimension!","color":"red"}]
execute as @a[scores={hub=1}] unless score @s location_dim = @s spawn_dim run scoreboard players reset @s hub

# Make sure there are no monsters nearby
execute as @a[scores={hub=1}] at @s if entity @e[distance=..16,predicate=dvg:monster] run tellraw @s ["",{"text":"You cannot teleport when monsters are nearby!","color":"red"}]
execute as @a[scores={hub=1}] at @s if entity @e[distance=..16,predicate=dvg:monster] run scoreboard players reset @s hub

# Make sure that player has ender pearls
tellraw @a[scores={hub=1,enderpearls=0}] ["",{"text":"You need an ender pearl to teleport to the hub!","color":"red"}]
scoreboard players reset @a[scores={hub=1,enderpearls=0}] hub

# compute squared distance from player spawn: dx^2 + dy^2 + dz^2
scoreboard players set @a[scores={hub=1}] near_home 0

# dx^2
execute as @a[scores={hub=1}] store result score @s dx run data get entity @s SpawnX
execute as @a[scores={hub=1}] run scoreboard players operation @s dx -= @s location_x
execute as @a[scores={hub=1}] run scoreboard players operation @s dx *= @s dx

# dy^2
execute as @a[scores={hub=1}] store result score @s dy run data get entity @s SpawnY
execute as @a[scores={hub=1}] run scoreboard players operation @s dy -= @s location_y
execute as @a[scores={hub=1}] run scoreboard players operation @s dy *= @s dy

# dz^2
execute as @a[scores={hub=1}] store result score @s dz run data get entity @s SpawnZ
execute as @a[scores={hub=1}] run scoreboard players operation @s dz -= @s location_z
execute as @a[scores={hub=1}] run scoreboard players operation @s dz *= @s dz

# sum
execute as @a[scores={hub=1}] run scoreboard players operation @s dx += @s dy
execute as @a[scores={hub=1}] run scoreboard players operation @s dx += @s dz

# Test distance
scoreboard players set @a[scores={hub=1,dx=..256}] near_home 1
tellraw @a[scores={hub=1,near_home=0}] ["",{"text":"You are too far away from your home!","color":"red"}]
scoreboard players reset @a[scores={hub=1,near_home=0}] hub

# Teleport
execute in minecraft:overworld run teleport @a[scores={hub=1}] spawn

# Effects
execute as @a[scores={hub=1}] at @s anchored eyes run particle minecraft:portal ^ ^ ^-1 0 0 0 10 250
execute as @a[scores={hub=1}] at @s run playsound minecraft:entity.enderman.teleport player @a

# Print message
execute as @a[scores={hub=1}] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" has teleported into the hub."}]

# Spend one ender peal
clear @a[scores={hub=1}] minecraft:ender_pearl 1

# remove temporaries
scoreboard objectives remove dx
scoreboard objectives remove dy
scoreboard objectives remove dz
scoreboard objectives remove near_home

# done
scoreboard players reset @a hub
