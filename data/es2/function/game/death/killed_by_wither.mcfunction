advancement revoke @s only es2:command/killed_by_wither
execute unless score #time time matches 0.. run return fail

execute as a-b-0-5-5 run scoreboard players add @s kill_player 1