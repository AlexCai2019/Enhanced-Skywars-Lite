execute if entity a-b-0-5-5 run return fail
execute at f-f-f-f-f run summon wither ~ 2.5 ~ {UUID: [I; 10, 720896, 327680, 5]}
time set midnight
execute as @a at @s run playsound entity.wither.spawn master @s
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 邪惡的凋零王令午夜降臨"]
bossbar set es2:wither players
schedule function es2:game/wither/loop 1