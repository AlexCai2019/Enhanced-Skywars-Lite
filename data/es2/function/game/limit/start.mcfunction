bossbar set es2:limit name [{"text": "限高限地", "color": "green"}, {"text": " Y = ", "color": "white"}, {"score": {"name": "#lowest", "objective": "limit"}, "color": "gold"}, {"text": " ~ ", "color": "white"}, {"score": {"name": "#highest", "objective": "limit"}, "color": "gold"}]
bossbar set es2:limit players @a

tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 限高限地 Y = ", {"score": {"name": "#lowest", "objective": "limit"}, "color": "gold"}, " ~ ", {"score": {"name": "#highest", "objective": "limit"}, "color": "gold"}]

schedule function es2:game/limit/loop 1