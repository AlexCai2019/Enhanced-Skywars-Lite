#遊戲開始前的tick

#玩家
execute as @a run function es2:before/player/root

#中心點
execute as f-f-f-f-f at @s run function es2:before/center

#檢查物品
execute as @e[type=item, tag=!lobby_check] run function es2:before/item

#倒數計時
execute if score 00000000-0000-0000-0000-000000000001 start matches 1 run function es2:before/countdown