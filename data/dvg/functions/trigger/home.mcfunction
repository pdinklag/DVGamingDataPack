# exceuted as player to teleport home

# create an armor stand at the player's spawn location
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["playerspawn"]}
execute store result entity @e[tag=playerspawn,limit=1] Pos[0] double 1 run data get entity @s SpawnX
execute store result entity @e[tag=playerspawn,limit=1] Pos[1] double 1 run data get entity @s SpawnY
execute store result entity @e[tag=playerspawn,limit=1] Pos[2] double 1 run data get entity @s SpawnZ

# fx at old position
function dvg:fx/teleport

# teleport based on spawn dimension
tag @s add home
execute if data entity @s {SpawnDimension:"minecraft:overworld"} run execute in minecraft:overworld positioned as @e[tag=playerspawn,limit=1] rotated 0 0 run function dvg:trigger/home_tp
execute if data entity @s {SpawnDimension:"minecraft:the_nether"} run execute in minecraft:the_nether positioned as @e[tag=playerspawn,limit=1] rotated 0 0 run function dvg:trigger/home_tp

# kill armor stand
kill @e[tag=playerspawn]

# fx at new position
tag @a[tag=home] add fx_teleport

# message
tellraw @a ["",{"selector":"@s","color":"green"},{"text":" has teleported home."}]
