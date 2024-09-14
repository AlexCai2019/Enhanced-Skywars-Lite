#遊戲開始前的tick

#玩家
execute as @a run function es2:before/player/root

execute as f-f-f-f-f at @s run function es2:before/center

execute as @e[type=item, tag=!lobby_check] run function es2:before/item

scoreboard players add #tick time 1
execute if score #tick time matches 20 run function es2:before/second/root

#倒數計時
execute if score 00000000-0000-0000-0000-000000000001 start matches 1 run function es2:before/countdown