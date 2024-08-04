scoreboard players add #tick time 1
execute if score #tick time matches 20 run function es2:game/second/root

execute if score 00000000-0000-0000-0000-000000000001 obsidian_back matches 1 as @e[type=item] run function es2:game/obsidian_back/item

execute store result score 00000000-0000-0000-0000-000000000002 survive if entity @a[team=red, gamemode=survival]
execute store result score 00000000-0000-0000-0000-000000000003 survive if entity @a[team=blue, gamemode=survival]
execute store result score 00000000-0000-0000-0000-000000000004 survive if entity @a[team=green, gamemode=survival]
execute store result score 00000000-0000-0000-0000-000000000005 survive if entity @a[team=yellow, gamemode=survival]
title @a actionbar [{"text": "紅隊", "color": "red"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000002", "objective": "survive"}}]}, {"text": " 藍隊", "color": "blue"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000003", "objective": "survive"}}]}, {"text": " 綠隊", "color": "green"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000004", "objective": "survive"}}]}, {"text": " 黃隊", "color": "yellow"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000005", "objective": "survive"}}]}]

execute store result storage es2:data root.game.count.team int 1 store result score #team survive at f-f-f-f-f positioned ~-1.5 33.0 ~-4.5 if entity @e[type=marker, tag=choose_team, scores={survive=1..}, dx=5, dy=0, dz=0]
execute store result storage es2:data root.game.count.player int 1 if entity @a[gamemode=!spectator]
function es2:game/player_count with storage es2:data root.game.count

execute if score #team survive matches ..1 run function es2:end/root