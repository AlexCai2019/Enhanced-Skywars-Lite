advancement revoke @s only es2:command/death
scoreboard players reset @s death

execute unless score #time time matches 0.. run return fail

gamemode spectator @s
execute as @a at @s run playsound entity.player.death
execute unless score #first first_spectator matches 1 run function es2:game/death/first_spectator

execute if entity @s[team=red] run return run function es2:game/death/eliminate {color: red, team: "紅"}
execute if entity @s[team=blue] run return run function es2:game/death/eliminate {color: blue, team: "藍"}
execute if entity @s[team=green] run return run function es2:game/death/eliminate {color: green, team: "綠"}
execute if entity @s[team=yellow] run return run function es2:game/death/eliminate {color: yellow, team: "黃"}