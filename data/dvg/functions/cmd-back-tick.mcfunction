execute if entity @a[scores={back=1..}] run function dvg:cmd-back
scoreboard players enable @a back

# reset at_spawn flag for players who just died
scoreboard players reset @a[scores={just_died=1}] at_spawn
