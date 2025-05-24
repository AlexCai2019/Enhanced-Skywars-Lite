execute store result storage es2:data root.game.time.su int 1 run scoreboard players set #second_unit time 0
execute store result storage es2:data root.game.time.st int 1 run scoreboard players add #second_tens time 1
execute if score #second_tens time matches 6 run function es2:game/second/60