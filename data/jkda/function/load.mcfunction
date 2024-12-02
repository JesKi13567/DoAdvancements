# 重载执行
scoreboard objectives add jkda.int dummy

execute unless score #load jkda.int matches 1 run function jkda:load/1st
execute if score #load jkda.int matches 1 if score #game.state jkda.int matches 0 run function jkda:load/2nd
execute if score #load jkda.int matches 1 if score #game.state jkda.int matches 1 run tellraw @a ["\n\n\n\n",{"text": "【做成就得积分】","color": "yellow"}," ",{"text": "游戏正在进行！","color": "green"},"\n",{"text": "重开？","underlined": true,"color": "red","clickEvent": {"action": "run_command","value": "/function jkda:load/2nd"}}]
execute if score #load jkda.int matches 1 if score #game.state jkda.int matches 2 run tellraw @a ["\n\n\n\n",{"text": "【做成就得积分】","color": "yellow"}," ",{"text": "游戏已结束！","color": "green"},"\n",{"text": "重开？","underlined": true,"color": "red","clickEvent": {"action": "run_command","value": "/function jkda:load/2nd"}}]
