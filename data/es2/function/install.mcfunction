execute if entity f-f-f-f-f run return run tellraw @s ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "遊戲已經安裝好了！", "color": "red"}]

gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doLimitedCrafting true
gamerule spawnRadius 0
gamerule doDaylightCycle false
gamerule doWeatherCycle false

weather clear
execute align xz run worldborder center ~.5 ~.5
worldborder damage buffer .5

execute unless entity 0-0-0-0-0 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.off", "color": "red"}', UUID: [I; 0, 0, 0, 0], Tags: ["setting"]}
execute unless entity 0-0-0-0-1 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.on", "color": "green"}', UUID: [I; 0, 0, 0, 1], Tags: ["setting"]}
execute unless entity 0-0-0-0-2 align xz run summon marker ~-.5 33.5 ~-3.5 {CustomName: '{"text": "紅隊", "color": "red"}', data: {team: "red", color: "red", message: '["加入", {"text": "紅隊", "color": "red", "bold": true}]'}, UUID: [I; 0, 0, 0, 2], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-3 align xz run summon marker ~.5 33.5 ~-3.5 {CustomName: '{"text": "藍隊", "color": "blue"}', data: {team: "blue", color: "blue", message: '["加入", {"text": "藍隊", "color": "blue", "bold": true}]'}, UUID: [I; 0, 0, 0, 3], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-4 align xz run summon marker ~1.5 33.5 ~-3.5 {CustomName: '{"text": "綠隊", "color": "green"}', data: {team: "green", color: "green", message: '["加入", {"text": "綠隊", "color": "green", "bold": true}]'}, UUID: [I; 0, 0, 0, 4], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-5 align xz run summon marker ~2.5 33.5 ~-3.5 {CustomName: '{"text": "黃隊", "color": "yellow"}', data: {team: "yellow", color: "yellow", message: '["加入", {"text": "黃隊", "color": "yellow", "bold": true}]'}, UUID: [I; 0, 0, 0, 5], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-6 align xz run summon marker ~3.5 33.5 ~-3.5 {CustomName: '{"text": "旁觀者", "color": "black"}', data: {team: "spectator", color: "black", message: '["加入", {"text": "旁觀者", "color": "black", "bold": true}]'}, UUID: [I; 0, 0, 0, 6], Tags: ["choose_team"]}
execute unless entity 0-0-0-0-7 align xz run summon marker ~4.5 33.5 ~-3.5 {UUID: [I; 0, 0, 0, 7], data: {team: "player", color: "white", message: '{"text": "退出隊伍", "color": "white", "bold": true}'}, Tags: ["choose_team"]}
execute unless entity f-f-f-f-f align xz run summon armor_stand ~.5 32.0 ~.5 {CustomName: '{"text": "強化空島戰爭 Lite", "color": "aqua"}', Invulnerable: true, Invisible: true, Marker: true, NoGravity: true, Small: true, NoBasePlate: true, DisabledSlots: 4144959, Pose: {LeftArm: [0f, 90f, 320f], RightArm: [0f, 270f, 40f]}, UUID: [I; 15, 983055, 983040, 15], Tags: ["center"]}

schedule function es2:utility/record_spawn 1

scoreboard objectives add information dummy {"text": "強化空島戰爭 Lite", "color": "aqua"}
scoreboard objectives add health health "❤"
scoreboard objectives add time dummy
scoreboard objectives add survive dummy
scoreboard objectives add mine_stone mined:cobblestone
scoreboard objectives add constant dummy
scoreboard objectives add first_spectator dummy
scoreboard objectives add death deathCount
scoreboard objectives add kill_player playerKillCount "殺人數"
scoreboard objectives add experience dummy

#第一本書
#開放選隊
scoreboard objectives add team_setting dummy
#同隊傷害
scoreboard objectives add friendly_fire dummy
#同隊推擠
scoreboard objectives add friendly_push dummy
#開始
scoreboard objectives add start dummy

#第二本書
#無限水源
scoreboard objectives add water_source dummy
#無限岩漿源
scoreboard objectives add lava_source dummy
#黑曜石恢復
scoreboard objectives add obsidian_back dummy
#基岩地板
scoreboard objectives add bedrock_floor dummy
#弓箭合成
scoreboard objectives add craft_projectile dummy
#斧頭合成
scoreboard objectives add craft_axe dummy
#盾牌合成
scoreboard objectives add craft_shield dummy
#起始物資
scoreboard objectives add start_resource dummy

#第三本書
#自然回血
scoreboard objectives add regeneration dummy
#摔落傷害
scoreboard objectives add fall_damage dummy
#火焰傷害
scoreboard objectives add fire_damage dummy
#1.8戰鬥
scoreboard objectives add 1_8 dummy
#死亡棺材
scoreboard objectives add coffin dummy
#棺材爆炸
scoreboard objectives add time_bomb dummy

#第四本書
#狂熱
scoreboard objectives add fanatic dummy
#鐵礦狂熱
scoreboard objectives add iron_ingot dummy
#金礦狂熱
scoreboard objectives add gold_ingot dummy
#鑽石狂熱
scoreboard objectives add diamond dummy
#致命絕殺
scoreboard objectives add wither dummy
#限高限地
scoreboard objectives add limit dummy

#第五本書
#邊界
scoreboard objectives add border dummy

scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health

scoreboard objectives modify information numberformat blank

scoreboard players set §s information 2
scoreboard players set 邊界大小 information 1
scoreboard players set #time time -3
scoreboard players set #1200 constant 1200

#第一本書
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

#第二本書
#有無限水源
scoreboard players set 00000000-0000-0000-0000-000000000000 water_source 0
scoreboard players set 00000000-0000-0000-0000-000000000001 water_source 1
#沒有無限岩漿源
scoreboard players set 00000000-0000-0000-0000-000000000000 lava_source 1
scoreboard players set 00000000-0000-0000-0000-000000000001 lava_source 0
#沒有黑曜石恢復
scoreboard players set 00000000-0000-0000-0000-000000000000 obsidian_back 1
scoreboard players set 00000000-0000-0000-0000-000000000001 obsidian_back 0
#沒有基岩地板
scoreboard players set 00000000-0000-0000-0000-000000000000 bedrock_floor 1
scoreboard players set 00000000-0000-0000-0000-000000000001 bedrock_floor 0
#有弓箭合成
scoreboard players set 00000000-0000-0000-0000-000000000000 craft_projectile 0
scoreboard players set 00000000-0000-0000-0000-000000000001 craft_projectile 1
#有斧頭合成
scoreboard players set 00000000-0000-0000-0000-000000000000 craft_axe 0
scoreboard players set 00000000-0000-0000-0000-000000000001 craft_axe 1
#有盾牌合成
scoreboard players set 00000000-0000-0000-0000-000000000000 craft_shield 0
scoreboard players set 00000000-0000-0000-0000-000000000001 craft_shield 1
#沒有起始物資
scoreboard players set 00000000-0000-0000-0000-000000000000 start_resource 1
scoreboard players set 00000000-0000-0000-0000-000000000001 start_resource 0

#第三本書
#有自然回血
scoreboard players set 00000000-0000-0000-0000-000000000000 regeneration 0
scoreboard players set 00000000-0000-0000-0000-000000000001 regeneration 1
#有摔落傷害
scoreboard players set 00000000-0000-0000-0000-000000000000 fall_damage 0
scoreboard players set 00000000-0000-0000-0000-000000000001 fall_damage 1
#有火焰傷害
scoreboard players set 00000000-0000-0000-0000-000000000000 fire_damage 0
scoreboard players set 00000000-0000-0000-0000-000000000001 fire_damage 1
#沒有1.8戰鬥
scoreboard players set 00000000-0000-0000-0000-000000000000 1_8 1
scoreboard players set 00000000-0000-0000-0000-000000000001 1_8 0
#沒有死亡棺材
scoreboard players set 00000000-0000-0000-0000-000000000000 coffin 1
scoreboard players set 00000000-0000-0000-0000-000000000001 coffin 0
#棺材不會爆炸
scoreboard players set 00000000-0000-0000-0000-000000000000 time_bomb 1
scoreboard players set 00000000-0000-0000-0000-000000000001 time_bomb 0
scoreboard players set #second time_bomb 30

#第四本書
#鐵錠狂熱
scoreboard players set #iron_ingot fanatic 0

#金錠狂熱
scoreboard players set #gold_ingot fanatic 0

#鑽石狂熱
scoreboard players set #diamond fanatic 0

#沒有致命絕殺
scoreboard players set 00000000-0000-0000-0000-000000000000 wither 1
scoreboard players set 00000000-0000-0000-0000-000000000001 wither 0
scoreboard players set #minute wither 5

#沒有限高限地
scoreboard players set 00000000-0000-0000-0000-000000000000 limit 1
scoreboard players set 00000000-0000-0000-0000-000000000001 limit 0
scoreboard players set #minute limit 5
scoreboard players set #highest limit 32
scoreboard players set #lowest limit -32

#第五本書
scoreboard players set #origin border 100
scoreboard players set 00000000-0000-0000-0000-000000000000 border 1
scoreboard players set 00000000-0000-0000-0000-000000000001 border 0
scoreboard players set #minute border 5
scoreboard players set #shrink border 5
scoreboard players set #size border 16

team add player "強化空島戰爭 Lite"
team add red "紅隊"
team add blue "藍隊"
team add green "綠隊"
team add yellow "黃隊"
team add spectator "旁觀者"

team add player_count "玩家人數"
team add spectator_count "旁觀者人數"
team add team_count "隊伍數"
team add border "邊界大小"
team add time "現在時間"
team add wither_display "凋零怪"

team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify spectator color black

team modify spectator_count color black
team modify border color aqua

team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false

#https://bugs.mojang.com/browse/MC/issues/MC-87984
team modify red collisionRule pushOwnTeam
team modify blue collisionRule pushOwnTeam
team modify green collisionRule pushOwnTeam
team modify yellow collisionRule pushOwnTeam

team modify spectator deathMessageVisibility never

team modify wither_display suffix {"translate": "entity.minecraft.wither"}

team join player_count 玩家人數
team join player_count 存活人數
team join spectator_count 旁觀者人數
team join team_count 隊伍數
team join team_count 存活隊伍數
team join border 邊界大小
team join time 現在時間
team join time 遊戲時間
team join wither_display §w

bossbar add es2:wither {"text": "致命絕殺", "color": "red"}
bossbar set es2:wither color red
bossbar add es2:limit {"text": "限高限地", "color": "green"}
bossbar set es2:limit color green
bossbar add es2:border {"text": "邊界縮圈", "color": "aqua"}
bossbar set es2:border color blue
bossbar add es2:reset {"text": "重設地圖中…", "color": "white"}
bossbar set es2:reset color white
bossbar set es2:reset max 143

data modify storage es2:data root.game.start_resource set value []
function es2:end/reset/begin