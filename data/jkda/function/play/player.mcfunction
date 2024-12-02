# 对玩家
scoreboard players remove @s jkda.player.time 1

execute as @s[scores={jkda.player.time=..0}] run tellraw @s {"text": "你的时长用完辣！","bold": true,"color": "red"}
execute as @s[scores={jkda.player.time=..0}] run gamemode spectator @s

execute if score #game.setting.2 jkda.int matches 1 run effect give @s night_vision infinite 0 true

execute unless score #game.setting.4 jkda.int matches 1 run title @s actionbar [{"text": "你的时长：","color": "gold"},{"score": {"name": "@s","objective": "jkda.player.time"},"color": "yellow"},"s"]
execute if score #game.setting.4 jkda.int matches 1 unless score @s jkda.player.time >= #game.time.running1 jkda.int run title @s actionbar [{"text": "你的时长：","color": "gold"},{"score": {"name": "@s","objective": "jkda.player.time"},"color": "yellow"},"s"]
execute if score #game.setting.4 jkda.int matches 1 if score @s jkda.player.time >= #game.time.running1 jkda.int run title @s actionbar [{"text": "游戏结束：","color": "gold"},{"score": {"name": "#game.time.running1","objective": "jkda.int"},"color": "yellow"},"s"]
execute if score #game.setting.4 jkda.int matches 2 if score @s jkda.player.score >= #game.setting.6 jkda.int run function jkda:play/end
