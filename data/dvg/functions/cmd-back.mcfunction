# Print error messages
execute as @a[nbt=!{Dimension:0},scores={back=1}] run tellraw @s ["",{"text":"You can only teleport in the overworld!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=0}] run tellraw @s ["",{"text":"You cannot teleport back home now!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=0}] run tellraw @s ["",{"text":"You need an ender pearl to teleport back home!","color":"red"}]
scoreboard players set @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] cmd_back 1
scoreboard players reset @a back

# Measure and test distance from spawn
scoreboard players set @a[scores={cmd_back=1}] near_spawn 0
scoreboard players set @a[distance=..16,scores={cmd_back=1}] near_spawn 1

execute as @a[scores={cmd_back=1,near_spawn=0}] run tellraw @s ["",{"text":"You are too far away from spawn!","color":"red"}]
scoreboard players reset @a[scores={cmd_back=1,near_spawn=0}] cmd_back
scoreboard players reset @a near_spawn

# Summon armor stand
execute as @a[scores={cmd_back=1}] at @s run summon armor_stand ~-2 ~ ~ {CustomName:"{\"text\":\"_back\"}",NoGravity:1,Marker:1,Invisible:1}
execute as @a[scores={cmd_back=1}] at @s store result entity @e[type=armor_stand,limit=1,sort=nearest,name=_back] Pos[0] double 1 run data get entity @s SpawnX
execute as @a[scores={cmd_back=1}] at @s store result entity @e[type=armor_stand,limit=1,sort=nearest,name=_back] Pos[1] double 1 run data get entity @s SpawnY
execute as @a[scores={cmd_back=1}] at @s store result entity @e[type=armor_stand,limit=1,sort=nearest,name=_back] Pos[2] double 1 run data get entity @s SpawnZ

# Teleport
execute as @a[scores={cmd_back=1}] run teleport @s @e[type=armor_stand,limit=1,sort=nearest,name=_back]

# Print message
execute as @a[scores={cmd_back=1}] run tellraw @s ["",{"text":"Teleported back home!","color":"green"}]

# Spend one ender peal
execute as @a[scores={cmd_back=1}] run clear @s minecraft:ender_pearl 1

# Reset at_spawn Flag
scoreboard players set @a[scores={cmd_back=1}] at_spawn 0

# Remove armor stands
kill @e[type=armor_stand,name=_back]

# Reset
scoreboard players reset @a cmd_back
