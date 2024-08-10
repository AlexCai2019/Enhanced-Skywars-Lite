#讓盔甲座執行指令
execute unless entity @s[tag=center] as f-f-f-f-f at @s run return run function es2:end/reset/tick

gamemode spectator @a[gamemode=!spectator]

execute store result bossbar es2:reset value run scoreboard players add #generate time 1

schedule function es2:end/reset/tick 1

#-64 ~ 319 共384層 384 / 3 = 128
execute if score #generate time matches ..128 run return run function es2:end/reset/clear
function es2:end/reset/generate/root