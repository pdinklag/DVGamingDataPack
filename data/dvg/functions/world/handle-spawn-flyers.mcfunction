execute positioned ~-16 ~8 ~-16 as @a[dx=32,dy=256,dz=32,scores={location_y=96..}] run tellraw @s ["",{"text":"Sorry, you cannot be this high above a spawn area!","color":"red"}]
execute positioned ~-16 ~8 ~-16 as @a[dx=32,dy=256,dz=32,scores={location_y=96..}] run spreadplayers ~16 ~16 0 2 false @s
