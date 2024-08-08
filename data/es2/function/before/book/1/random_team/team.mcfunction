$scoreboard players $(operation) #team team_setting 1
execute if score #team team_setting matches 5.. run scoreboard players set #team team_setting 2
execute if score #team team_setting matches ..1 run scoreboard players set #team team_setting 4
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 隨機分隊 現已設為 ", {"score": {"name": "#team", "objective": "team_setting"}, "color": "gold"}, " 隊"]
function es2:before/book/leaf