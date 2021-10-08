# exceuted as player to teleport to spawn

# create an armor stand at the player's spawn location
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["playerspawn"]}
execute store result entity @e[tag=playerspawn,limit=1] Pos[0] double 1 run data get entity @s SpawnX
execute store result entity @e[tag=playerspawn,limit=1] Pos[1] double 1 run data get entity @s SpawnY
execute store result entity @e[tag=playerspawn,limit=1] Pos[2] double 1 run data get entity @s SpawnZ

# set tag on player
tag @s add spawn
execute at @e[tag=playerspawn,limit=1] run execute as @a[tag=spawn,distance=8..,limit=1] run tellraw @s ["",{"text":"You are too far away from your respawn point!","color":"red"}]
execute at @e[tag=playerspawn,limit=1] run execute as @a[tag=spawn,distance=8..,limit=1] run tag @s remove spawn

# kill armor stand
kill @e[tag=playerspawn]

# consume ender pearl
execute if entity @s[tag=spawn,predicate=dvg:regular_player] run clear @s #dvg:teleport_currency 1

# effect at old position
execute if entity @s[tag=spawn] run function dvg:fx/teleport

# message
execute if entity @s[tag=spawn] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" has teleported to spawn."}]
