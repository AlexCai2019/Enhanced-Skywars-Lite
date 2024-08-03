execute if entity f-f-f-f-f run return run tellraw @s ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "遊戲已經安裝好了", "color": "red"}]

gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doLimitedCrafting true
gamerule spawnRadius 0
gamerule doDaylightCycle false
gamerule doWeatherCycle false

time set day
weather clear

execute unless entity 0-0-0-0-0 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.off", "color": "red"}', UUID: [I; 0, 0, 0, 0], Tags: ["setting"]}
execute unless entity 0-0-0-0-1 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.on", "color": "green"}', UUID: [I; 0, 0, 0, 1], Tags: ["setting"]}
execute unless entity 0-0-0-0-2 align xz run summon marker ~-.5 33.5 ~-3.5 {CustomName: '{"text": "紅隊", "color": "red"}', data: {team: "red", color: "red", message: '["加入", {"text": "紅隊", "color": "red", "bold": true}]'}, UUID: [I; 0, 0, 0, 2], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-3 align xz run summon marker ~.5 33.5 ~-3.5 {CustomName: '{"text": "藍隊", "color": "blue"}', data: {team: "blue", color: "blue", message: '["加入", {"text": "藍隊", "color": "blue", "bold": true}]'}, UUID: [I; 0, 0, 0, 3], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-4 align xz run summon marker ~1.5 33.5 ~-3.5 {CustomName: '{"text": "綠隊", "color": "green"}', data: {team: "green", color: "green", message: '["加入", {"text": "綠隊", "color": "green", "bold": true}]'}, UUID: [I; 0, 0, 0, 4], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-5 align xz run summon marker ~2.5 33.5 ~-3.5 {CustomName: '{"text": "黃隊", "color": "yellow"}', data: {team: "yellow", color: "yellow", message: '["加入", {"text": "黃隊", "color": "yellow", "bold": true}]'}, UUID: [I; 0, 0, 0, 5], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-6 align xz run summon marker ~3.5 33.5 ~-3.5 {CustomName: '{"text": "旁觀者", "color": "black"}', data: {team: "spectator", color: "black", message: '["加入", {"text": "旁觀者", "color": "black", "bold": true}]'}, UUID: [I; 0, 0, 0, 6], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-7 align xz run summon marker ~4.5 33.5 ~-3.5 {UUID: [I; 0, 0, 0, 7], data: {team: "player", color: "white", message: '{"text": "退出隊伍", "color": "white", "bold": true}'}, Tags: ["choose_team"]}
execute unless entity f-f-f-f-f align xz run summon armor_stand ~.5 .0 ~.5 {CustomName: '{"text": "強化空島戰爭 Lite", "color": "aqua"}', Invulnerable: true, Invisible: true, Marker: true, NoGravity: true, Small: true, NoBasePlate: true, DisabledSlots: 4144959, Pose: {LeftArm: [0f, 90f, 320f], RightArm: [0f, 270f, 40f]}, UUID: [I; 15, 983055, 983040, 15], Tags: ["center"]}

schedule function es2:end/reset/root 1

scoreboard objectives add information dummy {"text": "強化空島戰爭 Lite", "color": "aqua"}
scoreboard objectives add health health "❤"
scoreboard objectives add time dummy
scoreboard objectives add generate dummy
scoreboard objectives add survive dummy

#第一本書
#開放選隊
scoreboard objectives add team_setting dummy
#同隊傷害
scoreboard objectives add friendly_fire dummy
#同隊推擠
scoreboard objectives add friendly_push dummy
#開始
scoreboard objectives add start dummy

scoreboard objectives setdisplay sidebar information
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health

scoreboard objectives modify information numberformat blank

scoreboard players set #time time -3

#不能選隊
scoreboard players set 00000000-0000-0000-0000-000000000000 team_setting 1
scoreboard players set 00000000-0000-0000-0000-000000000001 team_setting 0
#沒有同隊傷害
scoreboard players set 00000000-0000-0000-0000-000000000000 friendly_fire 1
scoreboard players set 00000000-0000-0000-0000-000000000001 friendly_fire 0
#沒有同隊推擠
scoreboard players set 00000000-0000-0000-0000-000000000000 friendly_push 1
scoreboard players set 00000000-0000-0000-0000-000000000001 friendly_push 0
#預設4隊
scoreboard players set #team team_setting 4
#還沒開始
scoreboard players set 00000000-0000-0000-0000-000000000000 start 1
scoreboard players set 00000000-0000-0000-0000-000000000001 start 0

scoreboard players set §s information 1
scoreboard players set 現在時間 information 0

team add player "強化空島戰爭 Lite"
team add red "紅隊"
team add blue "藍隊"
team add green "綠隊"
team add yellow "黃隊"
team add spectator "旁觀者"

team add player_count "玩家人數"
team add spectator_count "旁觀者人數"
team add team_count "隊伍數"
team add time "現在時間"

team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify spectator color black

team modify spectator_count color black

team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false

#https://bugs.mojang.com/browse/MC-87984
team modify red collisionRule pushOwnTeam
team modify blue collisionRule pushOwnTeam
team modify green collisionRule pushOwnTeam
team modify yellow collisionRule pushOwnTeam

team modify spectator deathMessageVisibility never

team join player_count 玩家人數
team join player_count 存活人數
team join spectator_count 旁觀者人數
team join team_count 隊伍數
team join team_count 存活隊伍數
team join time 現在時間