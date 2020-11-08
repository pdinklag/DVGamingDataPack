execute as @a store result score @s location_x run data get entity @s Pos[0]
execute as @a store result score @s location_y run data get entity @s Pos[1]
execute as @a store result score @s location_z run data get entity @s Pos[2]

# we define the dimension as follows:
# <-2 = reserved for future special dimensions
# -2  = minecraft:the_end
# -1  = minecraft:the_nether
#  0  = minecraft:overworld (hub)
#  1  = dvg:old
#  2  = dvg:caves
# >2  = reserved for future overworlds
scoreboard players set @a[nbt={Dimension:"minecraft:the_end"}] location_dim -2
scoreboard players set @a[nbt={Dimension:"minecraft:the_nether"}] location_dim -1
scoreboard players set @a[nbt={Dimension:"minecraft:overworld"}] location_dim 0
scoreboard players set @a[nbt={Dimension:"dvg:old"}] location_dim 1
scoreboard players set @a[nbt={Dimension:"dvg:caves"}] location_dim 2
