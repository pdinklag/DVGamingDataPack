# binary decomposition of coordinate to teleport to
execute as @a[scores={cmd_back=1,dy=..-65536}] at @s run tp @s ~ ~-65536 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-65536}] dy 65536

execute as @a[scores={cmd_back=1,dy=..-32768}] at @s run tp @s ~ ~-32768 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-32768}] dy 32768

execute as @a[scores={cmd_back=1,dy=..-16384}] at @s run tp @s ~ ~-16384 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-16384}] dy 16384

execute as @a[scores={cmd_back=1,dy=..-8192}] at @s run tp @s ~ ~-8192 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-8192}] dy 8192

execute as @a[scores={cmd_back=1,dy=..-4096}] at @s run tp @s ~ ~-4096 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-4096}] dy 4096

execute as @a[scores={cmd_back=1,dy=..-2048}] at @s run tp @s ~ ~-2048 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-2048}] dy 2048

execute as @a[scores={cmd_back=1,dy=..-1024}] at @s run tp @s ~ ~-1024 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-1024}] dy 1024

execute as @a[scores={cmd_back=1,dy=..-512}] at @s run tp @s ~ ~-512 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-512}] dy 512

execute as @a[scores={cmd_back=1,dy=..-256}] at @s run tp @s ~ ~-256 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-256}] dy 256

execute as @a[scores={cmd_back=1,dy=..-128}] at @s run tp @s ~ ~-128 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-128}] dy 128

execute as @a[scores={cmd_back=1,dy=..-64}] at @s run tp @s ~ ~-64 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-64}] dy 64

execute as @a[scores={cmd_back=1,dy=..-32}] at @s run tp @s ~ ~-32 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-32}] dy 32

execute as @a[scores={cmd_back=1,dy=..-16}] at @s run tp @s ~ ~-16 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-16}] dy 16

execute as @a[scores={cmd_back=1,dy=..-8}] at @s run tp @s ~ ~-8 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-8}] dy 8

execute as @a[scores={cmd_back=1,dy=..-4}] at @s run tp @s ~ ~-4 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-4}] dy 4

execute as @a[scores={cmd_back=1,dy=..-2}] at @s run tp @s ~ ~-2 ~
scoreboard players add @a[scores={cmd_back=1,dy=..-2}] dy 2

execute as @a[scores={cmd_back=1,dy=-1}] at @s run tp @s ~ ~-1 ~
scoreboard players set @a[scores={cmd_back=1,dy=-1}] dy 0
