# get sleep timers
execute as @a store result score @s sleep.timer run data get entity @s SleepTimer

# if anybody gets a sleep timer of 101, it means they successfully slept
# if that happens outside of the overworld, reset time to zero
execute as @a[nbt=!{Dimension:"minecraft:overworld"},scores={sleep.timer=101..}] run time set 0
