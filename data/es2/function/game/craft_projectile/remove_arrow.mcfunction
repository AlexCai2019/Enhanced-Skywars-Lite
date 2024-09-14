#https://bugs.mojang.com/browse/MC-187281
advancement revoke @s only es2:command/obtain_arrow

#理論上應該要除以4 不過算了
execute store result storage es2:data root.game.craft_projectile.count int 1 run clear @s arrow
function es2:game/craft_projectile/return_ingredient with storage es2:data root.game.craft_projectile