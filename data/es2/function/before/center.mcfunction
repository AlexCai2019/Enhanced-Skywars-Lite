#UHC BLOX真是偉大
tp @s ~ ~ ~ ~1.2 ~
particle end_rod ~ ~ ~ 3.5 1.0 3.5 0 1 force @a

execute if score 00000000-0000-0000-0000-000000000001 team_setting matches 1 positioned ~-1.5 33.0 ~-4.5 as @e[type=marker, tag=choose_team, dx=5, dy=0, dz=0] at @s unless block ~ ~ ~ oak_sign run function es2:before/choose_team/restore_sign with entity @s data

execute if score 00000000-0000-0000-0000-000000000001 start_resource matches 1 unless score #edit start_resource matches 1 run data modify block ~-4 32 ~3 Items set from storage es2:data root.game.start_resource