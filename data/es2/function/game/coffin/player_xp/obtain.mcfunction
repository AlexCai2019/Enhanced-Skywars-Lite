#https://bugs.mojang.com/browse/MC-187281
advancement revoke @s only es2:command/obtain_experience_bottle

#拿到的不是特殊經驗瓶
#https://zh.minecraft.wiki/w/槽位
#注意container.* 不包含副手、裝備、合成區、游標
execute unless items entity @s container.* experience_bottle[custom_data~{player_xp: true}] run return fail

function es2:game/coffin/player_xp/give with entity @s Inventory[{id: "minecraft:experience_bottle", components: {"minecraft:custom_data": {player_xp: true}}}].components."minecraft:custom_data"
clear @s experience_bottle[custom_data~{player_xp: true}]