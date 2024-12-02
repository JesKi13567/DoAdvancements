# 游戏已开始，/s
scoreboard players add #game.time.running jkda.int 1

execute if score #game.setting.4 jkda.int matches 1 run scoreboard players remove #game.time.running1 jkda.int 1
execute if score #game.setting.4 jkda.int matches 1 if score #game.time.running1 jkda.int matches 0 run function jkda:play/end

# 人数检测，区分是否单人
execute store result score #game.count.player jkda.int if entity @a[gamemode=survival]
execute if score #game.counts jkda.int matches 1 if score #game.count.player jkda.int matches 1 run function jkda:play/end
execute unless score #game.counts jkda.int matches 1 if score #game.count.player jkda.int matches 0 run function jkda:play/end

# 玩家
execute as @a[gamemode=survival] run function jkda:play/player
effect give @a[gamemode=spectator] night_vision infinite 0 true
