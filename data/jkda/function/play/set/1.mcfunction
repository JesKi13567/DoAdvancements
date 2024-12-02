# 死亡不掉落
scoreboard players add #game.setting.1 jkda.int 1
execute if score #game.setting.1 jkda.int matches 2.. run scoreboard players reset #game.setting.1 jkda.int

execute unless score #game.setting.1 jkda.int matches 1 in overworld run gamerule keepInventory false
execute unless score #game.setting.1 jkda.int matches 1 in the_nether run gamerule keepInventory false
execute unless score #game.setting.1 jkda.int matches 1 in the_end run gamerule keepInventory false

execute if score #game.setting.1 jkda.int matches 1 in overworld run gamerule keepInventory true
execute if score #game.setting.1 jkda.int matches 1 in the_nether run gamerule keepInventory true
execute if score #game.setting.1 jkda.int matches 1 in the_end run gamerule keepInventory true

function jkda:load/2nd