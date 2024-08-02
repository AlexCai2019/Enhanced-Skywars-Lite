scoreboard players reset #tick generate
scoreboard players set #time time -1

tp f-f-f-f-f ~ 32.0 ~ .0 .0

execute as @a run function es2:before/resume/player
team empty red
team empty blue
team empty green
team empty yellow
team empty spectator