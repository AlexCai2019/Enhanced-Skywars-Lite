execute store success score 00000000-0000-0000-0000-000000000002 survive if entity @a[team=red]
execute store success score 00000000-0000-0000-0000-000000000003 survive if entity @a[team=blue]
execute store success score 00000000-0000-0000-0000-000000000004 survive if entity @a[team=green]
execute store success score 00000000-0000-0000-0000-000000000005 survive if entity @a[team=yellow]
execute store result storage es2:data root.before.count.team int 1 at f-f-f-f-f positioned ~-1.5 33.0 ~-4.5 if entity @e[type=marker, tag=choose_team, scores={survive=1}, dx=5, dy=0, dz=0]

execute store result storage es2:data root.before.count.player int 1 if entity @a[team=!spectator]
execute store result storage es2:data root.before.count.spectator int 1 if entity @a[team=spectator]

function es2:before/second/player_count with storage es2:data root.before.count

execute at f-f-f-f-f positioned ~ 319 ~ run function es2:before/real_time/query

scoreboard players set #tick time 0