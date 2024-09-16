#時間到了
execute if score #shrink_tick border matches 0 run return run function es2:game/border/finish_shrink

#還沒到
execute store result bossbar es2:border value run scoreboard players remove #shrink_tick border 1
schedule function es2:game/border/loop 1