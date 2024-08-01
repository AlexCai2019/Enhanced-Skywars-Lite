execute if entity f-f-f-f-f run return run tellraw @s ["<", {"text": "強化空島戰爭Lite", "color": "aqua"}, "> ", {"text": "遊戲已經安裝好了", "color": "red"}]

gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doLimitedCrafting true
gamerule enderPearlsVanishOnDeath true
gamerule randomTickSpeed 0
gamerule spawnRadius 0
gamerule doDaylightCycle false
gamerule doWeatherCycle false

execute unless entity 0-0-0-0-0 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.off", "color": "red"}', UUID: [I; 0, 0, 0, 0], Tags: ["setting"]}
execute unless entity 0-0-0-0-1 align xz run summon marker ~.5 -63.5 ~.5 {CustomName: '{"translate": "options.on", "color": "green"}', UUID: [I; 0, 0, 0, 1], Tags: ["setting"]}
execute unless entity f-f-f-f-f align xz run summon armor_stand ~.5 64.0 ~.5 {CustomName: '{"text": "強化空島戰爭Lite", "color": "aqua"}', CustomNameVisible: true, Invulnerable: true, Invisible: true, Marker: true, NoGravity: true, Small: true, NoBasePlate: true, DisabledSlots: 4144959, ArmorItems: [{}, {}, {}, {id: "grass_block", components: {enchantment_glint_override: true}}], UUID: [I; 15, 983055, 983040, 15], Tags: ["center"]}

schedule function es2:before/generate/root 1

scoreboard objectives add information dummy {"text": "強化空島戰爭Lite", "color": "aqua"}
scoreboard objectives add health health "❤️"
scoreboard objectives add time dummy
scoreboard objectives add generate dummy

scoreboard objectives setdisplay sidebar information
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health

scoreboard players set #tick time 0
scoreboard players set #time time -1