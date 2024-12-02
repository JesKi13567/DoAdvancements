# 游戏开始
scoreboard players set #game.state jkda.int 1
scoreboard players reset #game.time.running jkda.int

# 确认是否单人模式
scoreboard players reset #game.counts jkda.int
execute store result score #game.count.player jkda.int if entity @a
execute if score #game.count.player jkda.int matches 2.. run scoreboard players set #game.counts jkda.int 1

# 定时模式
scoreboard players reset #game.time.running1 jkda.int
execute if score #game.setting.4 jkda.int matches 1 run scoreboard players operation #game.time.running1 jkda.int = #game.setting.5 jkda.int

# 展示
scoreboard objectives setdisplay sidebar jkda.player.score
scoreboard objectives setdisplay list jkda.player.time

# 玩家
scoreboard players reset @a jkda.player.score
scoreboard players operation @a jkda.player.time = #game.setting.3 jkda.int
advancement revoke @a everything

clear @a
effect clear @a
xp set @a 0 levels
xp set @a 0 points
effect give @a instant_health 10 0 true
effect give @a saturation 10 0 true
gamemode survival @a
tp @a @s

execute as @a run attribute @s generic.jump_strength modifier remove jkda.jump
execute as @a run attribute @s generic.movement_speed modifier remove jkda.move

# 提示
tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n游戏已开始，冲冲冲！"
playsound ui.toast.challenge_complete player @a