#execute as @a[distance=..256,scores={lavabuckets=1..}] run tellraw @s ["",{"text":"Sorry, lava buckets are not allowed in a spawn area!","color":"red"}]
#execute as @a[distance=..256,scores={lavabuckets=1..}] run clear @s minecraft:lava_bucket
