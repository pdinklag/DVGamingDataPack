# reset just_died from last tick
scoreboard players reset @a just_died
# set just_died for players that just died
scoreboard players set @a[scores={dead=1..}] just_died 1
# reset death flag
scoreboard players reset @a dead
