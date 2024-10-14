#旁觀者
execute if entity @s[gamemode=spectator] at f-f-f-f-f run return run tp @s ~ 16.5 ~
#非旁觀者
damage @s 20 out_of_world at ~ ~ ~