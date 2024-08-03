gamerule randomTickSpeed 3

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
scoreboard players set #second_unit time 0
scoreboard players set #second_tens time 0
scoreboard players set #minute time 0
team modify time suffix [{"text": ": ", "color": "gray"}, {"text": "0:00", "color": "gold"}]

scoreboard players reset 隊伍數 information
scoreboard players reset 玩家人數 information
scoreboard players reset 旁觀者人數 information
scoreboard players set 存活人數 information 3
scoreboard players set 存活隊伍數 information 2

scoreboard players operation 00000000-0000-0000-0000-000000000000 start >< 00000000-0000-0000-0000-000000000001 start

execute if score 00000000-0000-0000-0000-000000000000 friendly_fire matches 1 run function es2:before/start/team_modify {option: "frendlyFire", value: "false"}
execute if score 00000000-0000-0000-0000-000000000001 friendly_fire matches 1 run function es2:before/start/team_modify {option: "frendlyFire", value: "true"}

#https://bugs.mojang.com/browse/MC-87984
execute if score 00000000-0000-0000-0000-000000000000 friendly_push matches 1 run function es2:before/start/team_modify {option: "collisionRule", value: "pushOwnTeam"}
execute if score 00000000-0000-0000-0000-000000000001 friendly_push matches 1 run function es2:before/start/team_modify {option: "collisionRule", value: "always"}