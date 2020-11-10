execute positioned ~-64 ~48 ~-64 as @a[dx=128,dy=256,dz=128] run tellraw @s ["",{"text":"Sorry, you cannot be this high above a spawn area!","color":"red"}]
execute positioned ~-64 ~48 ~-64 as @a[dx=128,dy=256,dz=128] run spreadplayers ~64 ~64 0 2 false @s
