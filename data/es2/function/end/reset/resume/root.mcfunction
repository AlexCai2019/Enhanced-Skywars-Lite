gamerule randomTickSpeed 0

scoreboard players reset #tick generate
scoreboard players set #time time -1
scoreboard players reset 存活人數 information
scoreboard players reset 存活隊伍數 information
scoreboard players set 隊伍數 information 4
scoreboard players set 玩家人數 information 3
scoreboard players set 旁觀者人數 information 2

tp f-f-f-f-f ~ 32.0 ~ .0 .0
data merge entity f-f-f-f-f {ArmorItems: [{}, {}, {}, {id: "player_head", components: {profile: {name: "Alex_Cai", properties: [{name: "textures", signature: "vZqEINJrryiaOHN1yOHeVxUwUkIyksWvHKAYtIVykW9QMoC36YSeLCISjcHzP3TH3hy7CcCTNbHHDeZX9V2mPV1ncz28eXTtRqwQY99j2Ihpjyj9koREFU9JW1nZTChGdHmyWH4DpdscnFwQvmQlzfUJerV+X/DsW5DoP7h9DgURUYa4O7hLVxIfXZXuj2J3EWtQFckpS75fqHPsIMPdCFZfbpPNF2unXDhZhvhWE45v1oQm082o31tSnRi26j/pCFDOwFhGS57zzqwO/07TBxCTDDLjJiDpW3TG86RT0J3/XZEhKOXaU9eOqg7rZp4rH99zujRrT1egY1jy8/UBOL+b1Z2kNsSYNaRoMBwRTui9mk2pqzK4TOzXuc2VlbTuBVifXBoVKg36s7NpmsxAdWzKSXH95Zc1nj9R7QLsqOKpJgLKvns6zrpf3NbZVsr7S2PXyck18HAYRK61lXpKnO+iJCd+Uv3G22Pq0GqnV+2uI/EF9F1imYKcTTtWkBQPaK16xf+oVK6x+5WBwtFX50HD/jcXpgF74h0RoeChEe3WE6mi8udceaKho/ibD9/A7GXAUihb1/hnMl+XYsk8dfXXp7zbh3TYlh0sNX2PhGkEB4USFeDo61p3sr76jGKVkSKo5uSI72fIyN9tuBkjqp3RIs766VIBIzOg4IqLuuQ=", value: "ewogICJ0aW1lc3RhbXAiIDogMTcyMjYwODg1NTg1NCwKICAicHJvZmlsZUlkIiA6ICI1OWMxMDI3YjU1NTk0ZTZhOTFlNDJiOGI5NDk2NTZjZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJBbGV4X0NhaSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYzAzZjUyOTNlYTc3YTdkYzM4MGNlYTBkYTQyOTA3OGQyOGE1ZjFhOTMyYzAzNzdhOGZkNWE4NjRkNThjNTQiCiAgICB9CiAgfQp9"}], id: [I; 1505821307, 1431916138, -1847317621, -1802086706]}}}], HandItems: [{id: "netherite_sword"}, {id: "diamond_sword"}], CustomNameVisible: true}

execute as @a run function es2:end/reset/resume/player
team empty red
team empty blue
team empty green
team empty yellow
team empty spectator