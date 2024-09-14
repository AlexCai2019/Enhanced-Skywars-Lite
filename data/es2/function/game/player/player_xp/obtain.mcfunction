#https://bugs.mojang.com/browse/MC-187281
advancement revoke @s only es2:command/obtain_experience_bottle

#拿到的不是特殊經驗瓶
execute unless items entity @s container.* experience_bottle[custom_data~{player_xp: true}] run return fail

function es2:game/player/player_xp/give with entity @s Inventory[{id: "minecraft:experience_bottle", components: {"minecraft:custom_data": {player_xp: true}}}].components."minecraft:custom_data"
clear @s experience_bottle[custom_data~{player_xp: true}]