#隊伍數
execute store success score 00000000-0000-0000-0000-000000000002 survive if entity @a[team=red]
execute store success score 00000000-0000-0000-0000-000000000003 survive if entity @a[team=blue]
execute store success score 00000000-0000-0000-0000-000000000004 survive if entity @a[team=green]
execute store success score 00000000-0000-0000-0000-000000000005 survive if entity @a[team=yellow]
execute store result storage es2:data root.before.scoreboard.team int 1 at f-f-f-f-f positioned ~-1.5 33.0 ~-4.5 if entity @e[type=marker, tag=choose_team, scores={survive=1}, dx=5, dy=0, dz=0]

#人數
execute store result storage es2:data root.before.scoreboard.player int 1 if entity @a[team=!spectator]
execute store result storage es2:data root.before.scoreboard.spectator int 1 if entity @a[team=spectator]

#邊界
execute store result storage es2:data root.before.scoreboard.border int 1 run worldborder get

#真實時間
execute at f-f-f-f-f positioned ~ 319 ~ run function es2:before/second/real_time

#記分板
function es2:before/second/scoreboard with storage es2:data root.before.scoreboard

#0 tick
scoreboard players set #tick time 0