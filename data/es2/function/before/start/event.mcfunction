#0秒就直接開始
$execute if score #minute $(objective) matches 0 run return run function es2:game/$(objective)/start

#轉分鐘為tick
$scoreboard players operation #time $(objective) = #minute $(objective)
$execute store result bossbar es2:$(objective) max store result bossbar es2:$(objective) value run scoreboard players operation #time $(objective) *= #1200 constant
$bossbar set es2:$(objective) players @a
$function es2:game/$(objective)/before_loop