scoreboard players set #game.state jkda.int 2
gamemode spectator @a
tellraw @a ["",{"text": "【做成就得积分】","color": "yellow"}," ",{"text": "游戏已结束！","color": "green"},"\n游戏总时长：",{"score": {"name": "#game.time.running","objective": "jkda.int"},"color": "gold"},{"text": "s","color": "gold"}]