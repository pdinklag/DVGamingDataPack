execute as @a store result score @s lavabuckets run clear @s minecraft:lava_bucket 0

execute as @a[distance=..256,nbt={Dimension:"minecraft:overworld"},scores={lavabuckets=1..}] run tellraw @s ["",{"text":"Sorry, lava buckets are not allowed this near to the spawn area!","color":"red"}]
execute as @a[distance=..256,nbt={Dimension:"minecraft:overworld"},scores={lavabuckets=1..}] run clear @s minecraft:lava_bucket
