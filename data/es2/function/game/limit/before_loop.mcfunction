execute store result bossbar es2:limit value run scoreboard players remove #time limit 1
execute if score #time limit matches 0 run return run function es2:game/limit/start
schedule function es2:game/limit/before_loop 1