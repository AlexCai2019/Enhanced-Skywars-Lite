#https://bugs.mojang.com/browse/MC/issues/MC-187281
advancement revoke @s only es2:command/obtain_experience_bottle

function es2:game/coffin/player_xp/give with entity @s Inventory[{id: "minecraft:experience_bottle", components: {"minecraft:custom_data": {player_xp: true}}}].components."minecraft:custom_data"
clear @s experience_bottle[custom_data~{player_xp: true}]