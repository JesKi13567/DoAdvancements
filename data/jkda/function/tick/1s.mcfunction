schedule function jkda:tick/1s 1s replace

execute if score #game.state jkda.int matches 0 run function jkda:play/state0
execute if score #game.state jkda.int matches 1 run function jkda:play/state1
