#尺寸和時間
execute store result storage es2:data root.game.border.size int 1 run scoreboard players get #size border
execute store result storage es2:data root.game.border.shrink int 60 run scoreboard players get #shrink border
function es2:game/border/resize with storage es2:data root.game.border

#縮小時間的tick
scoreboard players operation #shrink_tick border = #shrink border
execute store result bossbar es2:border max store result bossbar es2:border value run scoreboard players operation #shrink_tick border *= #1200 constant

execute as @a at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1.0 .0
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 邊界已開始收縮"]
schedule function es2:game/border/loop 1