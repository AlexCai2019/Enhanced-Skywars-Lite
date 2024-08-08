gamerule commandBlockOutput true
gamerule logAdminCommands true
gamerule sendCommandFeedback true
gamerule doImmediateRespawn false
gamerule doMobSpawning true
gamerule doLimitedCrafting false
gamerule naturalRegeneration true
gamerule fallDamage true
gamerule fireDamage true
gamerule waterSourceConversion true
gamerule lavaSourceConversion false
gamerule spawnRadius 10
gamerule randomTickSpeed 3
gamerule doDaylightCycle true
gamerule doWeatherCycle true

function es2:utility/restore_spawn with storage es2:data root.old_spawn

kill 0-0-0-0-0
kill 0-0-0-0-1
kill 0-0-0-0-2
kill 0-0-0-0-3
kill 0-0-0-0-4
kill 0-0-0-0-5
kill 0-0-0-0-6
kill 0-0-0-0-7
kill f-f-f-f-f
kill a-b-0-5-5

scoreboard objectives remove information
scoreboard objectives remove health
scoreboard objectives remove time
scoreboard objectives remove generate
scoreboard objectives remove survive
scoreboard objectives remove mine_stone
scoreboard objectives remove constant

scoreboard objectives remove team_setting
scoreboard objectives remove friendly_fire
scoreboard objectives remove friendly_push
scoreboard objectives remove start

scoreboard objectives remove regeneration
scoreboard objectives remove fall_damage
scoreboard objectives remove fire_damage
scoreboard objectives remove water_source
scoreboard objectives remove lava_source
scoreboard objectives remove obsidian_back
scoreboard objectives remove bedrock_floor
scoreboard objectives remove craft_projectile
scoreboard objectives remove craft_axe
scoreboard objectives remove craft_shield

scoreboard objectives remove iron_ingot
scoreboard objectives remove gold_ingot
scoreboard objectives remove diamond
scoreboard objectives remove wither
scoreboard objectives remove limit

scoreboard objectives remove border

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list

team remove player
team remove red
team remove blue
team remove green
team remove yellow
team remove spectator

team remove player_count
team remove spectator_count
team remove team_count
team remove time

bossbar remove es2:wither
bossbar remove es2:limit
bossbar remove es2:border

data remove storage es2:data root