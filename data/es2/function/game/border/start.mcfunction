execute store result storage es2:data root.game.border.size int 1 run scoreboard players get #size border
execute store result storage es2:data root.game.border.shrink int 60 run scoreboard players get #shrink border
function es2:game/border/resize with storage s2:data root.game.border

scoreboard players operation #shrink_tick border = #shrink border
scoreboard players operation #shrink_tick border *= #1200 constant

execute as @a at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1.0 .0
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 邊界已開始收縮"]
bossbar set es2:border players
schedule function es2:game/border/loop 1