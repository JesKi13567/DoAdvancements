# 第一次加载
scoreboard players set #load jkda.int 1
scoreboard players set #game.state jkda.int 0
scoreboard players set #game.setting.3 jkda.int 120
scoreboard players set #game.setting.5 jkda.int 300
scoreboard players set #game.setting.6 jkda.int 30

scoreboard objectives remove jkda.player.score
scoreboard objectives add jkda.player.score dummy "成就个数"

scoreboard objectives remove jkda.player.time
scoreboard objectives add jkda.player.time dummy "玩家时长"

# 开始循环
function jkda:tick/1s