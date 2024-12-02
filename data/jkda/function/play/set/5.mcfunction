# 游戏模式——定时秒数
scoreboard players add #game.setting.5 jkda.int 300
execute if score #game.setting.5 jkda.int matches 3001.. run scoreboard players set #game.setting.5 jkda.int 300

function jkda:load/2nd