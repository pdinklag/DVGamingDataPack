# binary decomposition of coordinate to teleport to
execute as @a[scores={cmd_back=1,back_dz=65536..}] at @s run tp @s ~ ~ ~65536
scoreboard players remove @a[scores={cmd_back=1,back_dz=65536..}] back_dz 65536

execute as @a[scores={cmd_back=1,back_dz=32768..}] at @s run tp @s ~ ~ ~32768
scoreboard players remove @a[scores={cmd_back=1,back_dz=32768..}] back_dz 32768

execute as @a[scores={cmd_back=1,back_dz=16384..}] at @s run tp @s ~ ~ ~16384
scoreboard players remove @a[scores={cmd_back=1,back_dz=16384..}] back_dz 16384

execute as @a[scores={cmd_back=1,back_dz=8192..}] at @s run tp @s ~ ~ ~8192
scoreboard players remove @a[scores={cmd_back=1,back_dz=8192..}] back_dz 8192

execute as @a[scores={cmd_back=1,back_dz=4096..}] at @s run tp @s ~ ~ ~4096
scoreboard players remove @a[scores={cmd_back=1,back_dz=4096..}] back_dz 4096

execute as @a[scores={cmd_back=1,back_dz=2048..}] at @s run tp @s ~ ~ ~2048
scoreboard players remove @a[scores={cmd_back=1,back_dz=2048..}] back_dz 2048

execute as @a[scores={cmd_back=1,back_dz=1024..}] at @s run tp @s ~ ~ ~1024
scoreboard players remove @a[scores={cmd_back=1,back_dz=1024..}] back_dz 1024

execute as @a[scores={cmd_back=1,back_dz=512..}] at @s run tp @s ~ ~ ~512
scoreboard players remove @a[scores={cmd_back=1,back_dz=512..}] back_dz 512

execute as @a[scores={cmd_back=1,back_dz=256..}] at @s run tp @s ~ ~ ~256
scoreboard players remove @a[scores={cmd_back=1,back_dz=256..}] back_dz 256

execute as @a[scores={cmd_back=1,back_dz=128..}] at @s run tp @s ~ ~ ~128
scoreboard players remove @a[scores={cmd_back=1,back_dz=128..}] back_dz 128

execute as @a[scores={cmd_back=1,back_dz=64..}] at @s run tp @s ~ ~ ~64
scoreboard players remove @a[scores={cmd_back=1,back_dz=64..}] back_dz 64

execute as @a[scores={cmd_back=1,back_dz=32..}] at @s run tp @s ~ ~ ~32
scoreboard players remove @a[scores={cmd_back=1,back_dz=32..}] back_dz 32

execute as @a[scores={cmd_back=1,back_dz=16..}] at @s run tp @s ~ ~ ~16
scoreboard players remove @a[scores={cmd_back=1,back_dz=16..}] back_dz 16

execute as @a[scores={cmd_back=1,back_dz=8..}] at @s run tp @s ~ ~ ~8
scoreboard players remove @a[scores={cmd_back=1,back_dz=8..}] back_dz 8

execute as @a[scores={cmd_back=1,back_dz=4..}] at @s run tp @s ~ ~ ~4
scoreboard players remove @a[scores={cmd_back=1,back_dz=4..}] back_dz 4

execute as @a[scores={cmd_back=1,back_dz=2..}] at @s run tp @s ~ ~ ~2
scoreboard players remove @a[scores={cmd_back=1,back_dz=2..}] back_dz 2

execute as @a[scores={cmd_back=1,back_dz=1}] at @s run tp @s ~ ~ ~1
scoreboard players set @a[scores={cmd_back=1,back_dz=1}] back_dz 0
