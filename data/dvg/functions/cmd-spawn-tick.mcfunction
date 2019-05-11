execute if entity @a[scores={spawn=1..}] run function dvg:cmd-spawn
scoreboard players enable @a spawn
# make sure at_spawn has a value!
scoreboard players add @a at_spawn 0
