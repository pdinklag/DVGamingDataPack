# Print error messages
execute as @a[nbt=!{Dimension:0},scores={back=1}] run tellraw @s ["",{"text":"You can only teleport in the overworld!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=0}] run tellraw @s ["",{"text":"You cannot go back now!","color":"red"}]
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=0}] run tellraw @s ["",{"text":"You need an ender pearl to teleport back!","color":"red"}]
# Summon armor stand
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] at @s run summon armor_stand ~-2 ~ ~ {CustomName:"{\"text\":\"_back\"}",NoGravity:1,Marker:1,Invisible:1}
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] at @s store result entity @e[type=armor_stand,limit=1,name=_back] Pos[0] double 1 run data get entity @s SpawnX
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] at @s store result entity @e[type=armor_stand,limit=1,name=_back] Pos[1] double 1 run data get entity @s SpawnY
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] at @s store result entity @e[type=armor_stand,limit=1,name=_back] Pos[2] double 1 run data get entity @s SpawnZ
# Teleport
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] run teleport @s @e[type=armor_stand,limit=1,sort=nearest,name=_back]
# Print message
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] run tellraw @s ["",{"text":"Teleported back!","color":"green"}]
# Spend one ender peal
execute as @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] run clear @s minecraft:ender_pearl 1
# Reset at_spawn Flag
scoreboard players set @a[nbt={Dimension:0},scores={back=1..,at_spawn=1..,enderpearls=1..}] at_spawn 0
# Remove armor stand
kill @e[type=armor_stand,name=_back]
# Reset
scoreboard players set @a[scores={back=1..}] back 0
