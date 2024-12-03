title @s title {"text": "遊戲開始！", "color": "green", "bold": true, "italic": true}
tellraw @s ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲開始！"]

clear
effect clear
xp set @s 0 levels
xp set @s 0 points
advancement revoke @s only es2:command/obtain_arrow
advancement revoke @s only es2:command/obtain_experience_bottle

#如果本來有隊伍的 就加入隊伍 傳送 轉生存
execute if entity @s[tag=red] run return run function es2:before/start/player/survival {team: red, dest: "~36.5 3.0 ~36.5 135.0"}
execute if entity @s[tag=blue] run return run function es2:before/start/player/survival {team: blue, dest: "~-36.5 3.0 ~-36.5 -45.0"}
execute if entity @s[tag=green] run return run function es2:before/start/player/survival {team: green, dest: "~-36.5 3.0 ~36.5 -135.0"}
execute if entity @s[tag=yellow] run return run function es2:before/start/player/survival {team: yellow, dest: "~36.5 3.0 ~-36.5 45.0"}

#旁觀者
team join spectator
gamemode spectator
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2