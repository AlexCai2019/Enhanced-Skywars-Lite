data modify block ~ ~ ~ Items set from storage es2:data root.game.start_resource
execute unless data storage es2:data root.game.start_resource run data remove block ~ ~ ~ Items
execute as @a[team=!spectator] run function es2:before/start/start_resource/player