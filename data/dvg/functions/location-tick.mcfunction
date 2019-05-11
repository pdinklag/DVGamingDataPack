execute as @a store result score @s location_x run data get entity @s Pos[0]
execute as @a store result score @s location_y run data get entity @s Pos[1]
execute as @a store result score @s location_z run data get entity @s Pos[2]
scoreboard players set @a[nbt={Dimension:0}] location_dim 0
scoreboard players set @a[nbt={Dimension:-1}] location_dim -1
scoreboard players set @a[nbt={Dimension:1}] location_dim 1
