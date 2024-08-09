execute store result bossbar es2:border value run scoreboard players remove #time border 1
execute if score #time border matches 0 run return run function es2:game/border/start
schedule function es2:game/border/before_loop 1