# Temporary variables
scoreboard objectives add cmd_spawn dummy
scoreboard objectives add near_home dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

# Print error messages
execute as @a[nbt=!{Dimension:0},scores={spawn=1}] run tellraw @s ["",{"text":"You can only teleport in the overworld!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=1..}] run tellraw @s ["",{"text":"You need to teleport back first!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=0}] run tellraw @s ["",{"text":"You need an ender pearl to teleport to spawn!","color":"red"}]
scoreboard players set @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=1..}] cmd_spawn 1
scoreboard players reset @a spawn

# compute squared distance: dx^2 + dy^2 + dz^2
scoreboard players set @a[scores={cmd_spawn=1}] near_home 0

# dx^2
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dx = @s spawnpos_x
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dx -= @s location_x
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dx *= @s dx

# dy^2
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dy = @s spawnpos_y
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dy -= @s location_y
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dy *= @s dy

# dz^2
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dz = @s spawnpos_z
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dz -= @s location_z
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dz *= @s dz

# sum
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dx += @s dy
execute as @a[scores={cmd_spawn=1}] run scoreboard players operation @s dx += @s dz

# Test distance
scoreboard players set @a[scores={cmd_spawn=1,dx=..256}] near_home 1
execute as @a[scores={cmd_spawn=1,near_home=0}] run tellraw @s ["",{"text":"You are too far away from home!","color":"red"}]
scoreboard players reset @a[scores={cmd_spawn=1,near_home=0}] cmd_spawn
scoreboard players reset @a near_home

# Teleport
# NEED SERVER SPAWN COORDINATES HERE
execute as @a[scores={cmd_spawn=1}] run teleport @s -6 77 23 180 0

# Effects
execute as @a[scores={cmd_spawn=1}] at @s anchored eyes run particle minecraft:portal ^ ^ ^-1 0 0 0 10 250
execute as @a[scores={cmd_spawn=1}] at @s run playsound minecraft:entity.enderman.teleport player @a

# Print message
execute as @a[scores={cmd_spawn=1}] run tellraw @s ["",{"selector":"@s","color":"green"},{"text":" has teleported to spawn."}]

# Spend one ender peal
execute as @a[scores={cmd_spawn=1}] run clear @s minecraft:ender_pearl 1

# Set at_spawn Flag
scoreboard players set @a[scores={cmd_spawn=1}] at_spawn 1

# remove temporaries
scoreboard objectives remove dx
scoreboard objectives remove dy
scoreboard objectives remove dz
scoreboard objectives remove cmd_spawn
scoreboard objectives remove near_home
