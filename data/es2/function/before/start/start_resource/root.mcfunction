execute unless block ~ ~ ~ #es2:containers run setblock ~ ~ ~ shulker_box
data modify block ~ ~ ~ Items set from storage es2:data root.game.start_resource
execute as @a[team=!spectator] run function es2:before/start/start_resource/player