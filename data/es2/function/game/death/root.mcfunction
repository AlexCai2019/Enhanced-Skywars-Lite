advancement revoke @s only es2:command/death
scoreboard players reset @s death

execute unless score #time time matches 0.. run return fail

gamemode spectator @s
execute as @a at @s run playsound entity.player.death
execute unless score #first first_spectator matches 1 run function es2:game/death/first_spectator
execute if score 00000000-0000-0000-0000-000000000001 death_drop matches 1 run function es2:game/death/coffin/root

execute if entity @s[team=red] run return run execute unless entity @a[team=red, gamemode=survival] run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "紅隊", "color": "red"}, " 已被殲滅"]
execute if entity @s[team=blue] run return run execute unless entity @a[team=blue, gamemode=survival] run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "藍隊", "color": "blue"}, " 已被殲滅"]
execute if entity @s[team=green] run return run execute unless entity @a[team=green, gamemode=survival] run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "綠隊", "color": "green"}, " 已被殲滅"]
execute if entity @s[team=yellow] run return run execute unless entity @a[team=yellow, gamemode=survival] run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "黃隊", "color": "yellow"}, " 已被殲滅"]