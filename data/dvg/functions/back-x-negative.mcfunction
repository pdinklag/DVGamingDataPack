# binary decomposition of coordinate to teleport to
execute as @a[scores={cmd_back=1,back_dx=..-65536}] at @s run tp @s ~-65536 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-65536}] back_dx 65536

execute as @a[scores={cmd_back=1,back_dx=..-32768}] at @s run tp @s ~-32768 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-32768}] back_dx 32768

execute as @a[scores={cmd_back=1,back_dx=..-16384}] at @s run tp @s ~-16384 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-16384}] back_dx 16384

execute as @a[scores={cmd_back=1,back_dx=..-8192}] at @s run tp @s ~-8192 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-8192}] back_dx 8192

execute as @a[scores={cmd_back=1,back_dx=..-4096}] at @s run tp @s ~-4096 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-4096}] back_dx 4096

execute as @a[scores={cmd_back=1,back_dx=..-2048}] at @s run tp @s ~-2048 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-2048}] back_dx 2048

execute as @a[scores={cmd_back=1,back_dx=..-1024}] at @s run tp @s ~-1024 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-1024}] back_dx 1024

execute as @a[scores={cmd_back=1,back_dx=..-512}] at @s run tp @s ~-512 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-512}] back_dx 512

execute as @a[scores={cmd_back=1,back_dx=..-256}] at @s run tp @s ~-256 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-256}] back_dx 256

execute as @a[scores={cmd_back=1,back_dx=..-128}] at @s run tp @s ~-128 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-128}] back_dx 128

execute as @a[scores={cmd_back=1,back_dx=..-64}] at @s run tp @s ~-64 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-64}] back_dx 64

execute as @a[scores={cmd_back=1,back_dx=..-32}] at @s run tp @s ~-32 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-32}] back_dx 32

execute as @a[scores={cmd_back=1,back_dx=..-16}] at @s run tp @s ~-16 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-16}] back_dx 16

execute as @a[scores={cmd_back=1,back_dx=..-8}] at @s run tp @s ~-8 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-8}] back_dx 8

execute as @a[scores={cmd_back=1,back_dx=..-4}] at @s run tp @s ~-4 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-4}] back_dx 4

execute as @a[scores={cmd_back=1,back_dx=..-2}] at @s run tp @s ~-2 ~ ~
scoreboard players add @a[scores={cmd_back=1,back_dx=..-2}] back_dx 2

execute as @a[scores={cmd_back=1,back_dx=-1}] at @s run tp @s ~-1 ~ ~
scoreboard players set @a[scores={cmd_back=1,back_dx=-1}] back_dx 0
