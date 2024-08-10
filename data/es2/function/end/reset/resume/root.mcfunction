schedule clear es2:end/reset/tick

gamerule randomTickSpeed 0
gamerule naturalRegeneration true
gamerule commandModificationBlockLimit 32768

time set day

scoreboard players set #generate time 0
scoreboard players set #time time -1
scoreboard players reset 存活人數 information
scoreboard players reset 存活隊伍數 information
scoreboard players reset 遊戲時間 information
scoreboard players set 隊伍數 information 5
scoreboard players set 玩家人數 information 4
scoreboard players set 旁觀者人數 information 3
scoreboard players set 現在時間 information 0

tp f-f-f-f-f ~ 32.0 ~ .0 .0
data merge entity f-f-f-f-f {HandItems: [{id: "netherite_sword"}, {id: "diamond_sword"}], CustomNameVisible: true}
#這樣還比較方便
item replace entity f-f-f-f-f armor.head with player_head[profile="Alex_Cai"]

execute as @a run function es2:end/reset/resume/player
team empty red
team empty blue
team empty green
team empty yellow
team empty spectator

bossbar set es2:reset players