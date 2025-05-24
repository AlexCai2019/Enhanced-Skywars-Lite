scoreboard players set #tick time 0
scoreboard players add #time time 1

#秒
execute store result storage es2:data root.game.time.su int 1 run scoreboard players add #second_unit time 1
execute if score #second_unit time matches 10 run function es2:game/second/10
function es2:game/second/time with storage es2:data root.game.time