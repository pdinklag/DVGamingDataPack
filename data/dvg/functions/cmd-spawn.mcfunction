# Print error messages
execute as @a[nbt=!{Dimension:0},scores={spawn=1}] run tellraw @s ["",{"text":"You can only teleport in the overworld!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=1..}] run tellraw @s ["",{"text":"You need to teleport back first!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=0}] run tellraw @s ["",{"text":"You need an ender pearl to teleport to spawn!","color":"red"}]
# Teleport
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=1..}] run teleport @s 0 4 0 -90 0
# Print message
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=1..}] run tellraw @s ["",{"text":"Teleported to spawn!","color":"green"}]
# Spend one ender peal
execute as @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=1..}] run clear @s minecraft:ender_pearl 1
# Set at_spawn Flag
scoreboard players set @a[nbt={Dimension:0},scores={spawn=1..,at_spawn=0,enderpearls=1..}] at_spawn 1
# Reset
scoreboard players set @a[scores={spawn=1..}] spawn 0
