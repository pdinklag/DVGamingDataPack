# Temporary variables
scoreboard objectives add cmd_back dummy
scoreboard objectives add near_spawn dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

# Print error messages
execute as @a[nbt=!{Dimension:"minecraft:overworld"},scores={back=1}] run tellraw @s ["",{"text":"You can only teleport in the overworld!","color":"red"}]
execute as @a[nbt={Dimension:"minecraft:overworld"},scores={back=1..,enderpearls=0}] run tellraw @s ["",{"text":"You need an ender pearl to teleport back home!","color":"red"}]
scoreboard players set @a[nbt={Dimension:"minecraft:overworld"},scores={back=1..,enderpearls=1..}] cmd_back 1
scoreboard players reset @a back

# Measure and test distance from spawn
scoreboard players set @a[scores={cmd_back=1}] near_spawn 0
scoreboard players set @a[distance=..16,scores={cmd_back=1}] near_spawn 1

execute as @a[scores={cmd_back=1,near_spawn=0}] run tellraw @s ["",{"text":"You are too far away from spawn!","color":"red"}]
scoreboard players reset @a[scores={cmd_back=1,near_spawn=0}] cmd_back
scoreboard players reset @a near_spawn

# Teleport to origin first
# this makes sure player will end up in the center of his home block
execute as @a[scores={cmd_back=1}] run tp @s 0 0 0

# Teleport on each axis separately
execute if entity @a[scores={cmd_back=1}] run function dvg:back-x
execute if entity @a[scores={cmd_back=1}] run function dvg:back-y
execute if entity @a[scores={cmd_back=1}] run function dvg:back-z

# Effects
execute as @a[scores={cmd_back=1}] at @s anchored eyes run particle minecraft:portal ^ ^ ^-1 0 0 0 10 250
execute as @a[scores={cmd_back=1}] at @s run playsound minecraft:entity.enderman.teleport player @a

# Print message
execute as @a[scores={cmd_back=1}] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" has teleported back home."}]

# Spend one ender pearl
execute as @a[scores={cmd_back=1}] run clear @s minecraft:ender_pearl 1

# Remove armor stands
kill @e[type=armor_stand,name=_back]

# Remove temporaries
scoreboard objectives remove cmd_back
scoreboard objectives remove near_spawn
scoreboard objectives remove dx
scoreboard objectives remove dy
scoreboard objectives remove dz
