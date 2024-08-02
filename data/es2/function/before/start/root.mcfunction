#重設隊伍 避免有人分好隊後退出
execute as @a run function es2:before/start/player/record_team
team empty red
team empty blue
team empty green
team empty yellow
team empty player
team empty spectator

#有關玩家的部分
execute as @a run function es2:before/start/player/root

#有關中心點的部分
execute as f-f-f-f-f at @s run function es2:before/start/center

scoreboard players set #tick time 0
scoreboard players set #time time 0