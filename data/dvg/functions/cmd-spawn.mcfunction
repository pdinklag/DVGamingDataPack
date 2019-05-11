# Print error messages
execute as @a[nbt=!{Dimension:0},scores={spawn=1}] run tellraw @s ["",{"text":"You can only teleport in the overworld!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=1..}] run tellraw @s ["",{"text":"You need to teleport back first!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=0}] run tellraw @s ["",{"text":"You need an ender pearl to teleport to spawn!","color":"red"}]
scoreboard players set @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=1..}] cmd_spawn 1
scoreboard players reset @a spawn

# Use temporary armor stand to test distance to home
execute as @a[scores={cmd_spawn=1}] at @s run summon armor_stand ~-2 ~ ~ {CustomName:"{\"text\":\"_home\"}",NoGravity:1,Marker:1,Invisible:1}
execute as @a[scores={cmd_spawn=1}] at @s store result entity @e[type=armor_stand,limit=1,sort=nearest,name=_home] Pos[0] double 1 run data get entity @s SpawnX
execute as @a[scores={cmd_spawn=1}] at @s store result entity @e[type=armor_stand,limit=1,sort=nearest,name=_home] Pos[1] double 1 run data get entity @s SpawnY
execute as @a[scores={cmd_spawn=1}] at @s store result entity @e[type=armor_stand,limit=1,sort=nearest,name=_home] Pos[2] double 1 run data get entity @s SpawnZ

# Measure distance
scoreboard players set @a[scores={cmd_spawn=1}] near_home 0
execute at @e[type=armor_stand,name=_home] run scoreboard players set @a[distance=..16,scores={cmd_spawn=1}] near_home 1

# Kill temporary armor stand
kill @e[type=armor_stand,name=_home]

# Test distance
execute as @a[scores={cmd_spawn=1,near_home=0}] run tellraw @s ["",{"text":"You are too far away from home!","color":"red"}]
scoreboard players reset @a[scores={cmd_spawn=1,near_home=0}] cmd_spawn
scoreboard players reset @a near_home

# Teleport
# NEED SERVER SPAWN COORDINATES HERE
execute as @a[scores={cmd_spawn=1}] run teleport @s 0 4 0 -90 0

# Effects
execute as @a[scores={cmd_spawn=1}] at @s anchored eyes run particle minecraft:portal ^ ^ ^-1 0 0 0 10 250
execute as @a[scores={cmd_spawn=1}] at @s run playsound minecraft:entity.enderman.teleport player @a

# Print message
execute as @a[scores={cmd_spawn=1}] run tellraw @s ["",{"selector":"@s","color":"green"},{"text":" has teleported to spawn."}]

# Spend one ender peal
execute as @a[scores={cmd_spawn=1}] run clear @s minecraft:ender_pearl 1

# Set at_spawn Flag
scoreboard players set @a[scores={cmd_spawn=1}] at_spawn 1

# Reset
scoreboard players reset @a cmd_spawn
