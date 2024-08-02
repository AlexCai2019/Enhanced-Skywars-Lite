title @s title {"text": "遊戲開始！", "color": "green", "bold": true, "italic": true}
tellraw @s ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲開始！"]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2

clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points

execute if entity @s[tag=red] run return run function es2:before/start/player/survival {team: "red", dest: "~36 3 ~36 135.0 .0"}
execute if entity @s[tag=blue] run return run function es2:before/start/player/survival {team: "blue", dest: "~-36 3 ~-36 -45.0 .0"}
execute if entity @s[tag=green] run return run function es2:before/start/player/survival {team: "green", dest: "~-36 3 ~36 -135.0 .0"}
execute if entity @s[tag=yellow] run return run function es2:before/start/player/survival {team: "yellow", dest: "~36 3 ~-36 45.0 .0"}

#旁觀者
team join spectator @s
gamemode spectator @s