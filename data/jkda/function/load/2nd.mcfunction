scoreboard players set #game.state jkda.int 0

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

execute unless score #game.setting.1 jkda.int matches 1 run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting1"],CustomName:'{"text":"[死亡不掉落]","color": "white"}'}
execute if score #game.setting.1 jkda.int matches 1 run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting1"],CustomName:'{"text":"[死亡不掉落]","color": "green"}'}

execute unless score #game.setting.2 jkda.int matches 1 run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting2"],CustomName:'{"text":"[无限夜视]","color": "white"}'}
execute if score #game.setting.2 jkda.int matches 1 run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting2"],CustomName:'{"text":"[无限夜视]","color": "green"}'}

execute unless score #game.setting.4 jkda.int matches 1.. run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting4"],CustomName:'{"text":"[默认]","color": "green"}'}
execute if score #game.setting.4 jkda.int matches 1 run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting4"],CustomName:'{"text":"[定时]","color": "green"}'}
execute if score #game.setting.4 jkda.int matches 2 run summon marker ~ ~ ~ {Tags:["jkda","jkda_setting","jkda_setting4"],CustomName:'{"text":"[成就]","color": "green"}'}

execute if score #game.state jkda.int matches 0 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "========","color": "green"}," ",{"text": "做成就得积分","color": "yellow"}," ",{"text": "========","color": "green"},{"text": "\n成就/进度说法差不多，这里统一为“成就”方便理解。","color": "gray"},"\n\n共117个成就，其中普通+60，目标+120，挑战+240。\n其中+X，X为秒数；每个成就各占1分。\n\n",{"text": "在倒计时结束前成为成就最多的玩家吧！","color": "gold"},"\n\n游戏开始后，玩家列表为倒计时，侧边栏为成就个数。\n\n基础设置：",{"selector": "@e[limit=1,tag=jkda_setting1]","clickEvent": {"action": "run_command","value": "/function jkda:play/set/1"}},"  ",{"selector": "@e[limit=1,tag=jkda_setting2]","clickEvent": {"action": "run_command","value": "/function jkda:play/set/2"}},"\n\n初始秒数：[",{"score": {"name": "#game.setting.3","objective": "jkda.int"},"color": "aqua","clickEvent": {"action": "run_command","value": "/function jkda:play/set/3"}},"]  模式选择：",{"selector": "@e[limit=1,tag=jkda_setting4]","clickEvent": {"action": "run_command","value": "/function jkda:play/set/4"}}]

execute if score #game.state jkda.int matches 0 if score #game.setting.4 jkda.int matches 1 run tellraw @a ["\n定时秒数：[",{"score": {"name": "#game.setting.5","objective": "jkda.int"},"color": "aqua","clickEvent": {"action": "run_command","value": "/function jkda:play/set/5"}},"]"]
execute if score #game.state jkda.int matches 0 if score #game.setting.4 jkda.int matches 2 run tellraw @a ["\n成就数量：[",{"score": {"name": "#game.setting.6","objective": "jkda.int"},"color": "aqua","clickEvent": {"action": "run_command","value": "/function jkda:play/set/6"}},"]"]

execute if score #game.state jkda.int matches 0 run tellraw @a ["\n",{"text": "========","color": "green"}," ",{"text": "[开始游戏]","color": "light_purple","clickEvent": {"action": "run_command","value": "/function jkda:play/start"}}," ",{"text": "========","color": "green"}]

kill @e[tag=jkda_setting]
