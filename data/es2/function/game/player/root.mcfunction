execute if entity @s[team=] run function es2:utility/new_join {gamemode: spectator, team: spectator}
effect give @s[gamemode=spectator] night_vision infinite 0 true
execute at @s if predicate es2:location/too_low run function es2:game/player/too_low