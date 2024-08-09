execute store result bossbar es2:wither value run scoreboard players remove #time wither 1
execute if score #time wither matches 0 run return run function es2:game/wither/start
schedule function es2:game/wither/before_loop 1