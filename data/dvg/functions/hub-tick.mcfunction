execute as @a[nbt={playerGameType:2}] unless score @s location_dim matches 0 run gamemode survival @s
execute as @a[nbt={playerGameType:0}] if score @s location_dim matches 0 run gamemode adventure @s
