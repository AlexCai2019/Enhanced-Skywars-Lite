execute if entity f-f-f-f-f run return run tellraw @s ["<", {"text": "強化空島戰爭Lite", "color": "aqua"}, "> ", {"text": "遊戲已經安裝好了", "color": "red"}]

gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doLimitedCrafting true
gamerule randomTickSpeed 0
gamerule spawnRadius 0
gamerule doDaylightCycle false
gamerule doWeatherCycle false

time set day
weather clear

execute unless entity 0-0-0-0-0 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.off", "color": "red"}', UUID: [I; 0, 0, 0, 0], Tags: ["setting"]}
execute unless entity 0-0-0-0-1 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.on", "color": "green"}', UUID: [I; 0, 0, 0, 1], Tags: ["setting"]}
execute unless entity f-f-f-f-f align xz run summon armor_stand ~.5 .0 ~.5 {CustomName: '{"text": "強化空島戰爭 Lite", "color": "aqua"}', CustomNameVisible: true, Invulnerable: true, Invisible: true, Marker: true, NoGravity: true, Small: true, NoBasePlate: true, DisabledSlots: 4144959, Pose: {LeftArm: [0f, 90f, 320f], RightArm: [0f, 270f, 40f]}, ArmorItems: [{}, {}, {}, {id: "player_head", components: {profile: "Alex_Cai"}}], HandItems: [{id: "netherite_sword"}, {id: "diamond_sword"}], ArmorItems: [{}, {}, {}, {id: "player_head", components: {profile: {name: "Alex_Cai", properties: [{name: "textures", signature: "vZqEINJrryiaOHN1yOHeVxUwUkIyksWvHKAYtIVykW9QMoC36YSeLCISjcHzP3TH3hy7CcCTNbHHDeZX9V2mPV1ncz28eXTtRqwQY99j2Ihpjyj9koREFU9JW1nZTChGdHmyWH4DpdscnFwQvmQlzfUJerV+X/DsW5DoP7h9DgURUYa4O7hLVxIfXZXuj2J3EWtQFckpS75fqHPsIMPdCFZfbpPNF2unXDhZhvhWE45v1oQm082o31tSnRi26j/pCFDOwFhGS57zzqwO/07TBxCTDDLjJiDpW3TG86RT0J3/XZEhKOXaU9eOqg7rZp4rH99zujRrT1egY1jy8/UBOL+b1Z2kNsSYNaRoMBwRTui9mk2pqzK4TOzXuc2VlbTuBVifXBoVKg36s7NpmsxAdWzKSXH95Zc1nj9R7QLsqOKpJgLKvns6zrpf3NbZVsr7S2PXyck18HAYRK61lXpKnO+iJCd+Uv3G22Pq0GqnV+2uI/EF9F1imYKcTTtWkBQPaK16xf+oVK6x+5WBwtFX50HD/jcXpgF74h0RoeChEe3WE6mi8udceaKho/ibD9/A7GXAUihb1/hnMl+XYsk8dfXXp7zbh3TYlh0sNX2PhGkEB4USFeDo61p3sr76jGKVkSKo5uSI72fIyN9tuBkjqp3RIs766VIBIzOg4IqLuuQ=", value: "ewogICJ0aW1lc3RhbXAiIDogMTcyMjYwODg1NTg1NCwKICAicHJvZmlsZUlkIiA6ICI1OWMxMDI3YjU1NTk0ZTZhOTFlNDJiOGI5NDk2NTZjZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJBbGV4X0NhaSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYzAzZjUyOTNlYTc3YTdkYzM4MGNlYTBkYTQyOTA3OGQyOGE1ZjFhOTMyYzAzNzdhOGZkNWE4NjRkNThjNTQiCiAgICB9CiAgfQp9"}], id: [I; 1505821307, 1431916138, -1847317621, -1802086706]}}}], UUID: [I; 15, 983055, 983040, 15], Tags: ["center"]}

schedule function es2:before/generate/root 1

scoreboard objectives add information dummy {"text": "強化空島戰爭 Lite", "color": "aqua"}
scoreboard objectives add health health "❤️"
scoreboard objectives add time dummy
scoreboard objectives add generate dummy

scoreboard objectives setdisplay sidebar information
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health

scoreboard players set #tick time 0
scoreboard players set #time time -1

team add player "強化空島戰爭 Lite"
team add red "紅隊"
team add blue "藍隊"
team add green "綠隊"
team add yellow "黃隊"
team add spectator "旁觀者"

team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify spectator color black

#https://bugs.mojang.com/browse/MC-87984
team modify red collisionRule pushOwnTeam
team modify blue collisionRule pushOwnTeam
team modify green collisionRule pushOwnTeam
team modify yellow collisionRule pushOwnTeam

team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false

team modify spectator deathMessageVisibility never