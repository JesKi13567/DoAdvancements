# 游戏未开始，/s
effect give @a[gamemode=!creative] mining_fatigue infinite 9 true
execute as @a[gamemode=!creative] run attribute @s generic.jump_strength modifier add jkda.jump -1 add_value
execute as @a[gamemode=!creative] run attribute @s generic.movement_speed modifier add jkda.move -1 add_value
