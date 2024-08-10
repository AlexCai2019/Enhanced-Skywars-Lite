execute if entity @s[team=] run function es2:utility/new_join {gamemode: adventure, team: player}

execute at @s[predicate=es2:leave_lobby] run function es2:before/player/float

#書本
item replace entity @s hotbar.0 with written_book[written_book_content={pages: ['["    ", {"text": "強化空島戰爭 Lite", "color": "aqua", "bold": true}, "\\n\\n", {"text": "開放選隊：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則玩家可以自行選擇隊伍"]}}, {"selector": "@e[type=marker, tag=setting, scores={team_setting=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/choose_team"}}, "\\n", {"text": "同隊傷害：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則同隊之間可以互相傷害"]}}, {"selector": "@e[type=marker, tag=setting, scores={friendly_fire=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"同隊傷害\\", objective: friendly_fire}"}}, "\\n", {"text": "同隊推擠：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則同隊之間可以互相推擠"]}}, {"selector": "@e[type=marker, tag=setting, scores={friendly_push=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"同隊推擠\\", objective: friendly_push}"}}, "\\n\\n    ", {"text": "分隊數量：", "hoverEvent": {"action": "show_text", "contents": "隨機分隊的數量"}}, {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/random_team/team {operation: remove}"}}, " ", {"score": {"name": "#team", "objective": "team_setting"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/random_team/team {operation: add}"}}, "\\n       ", {"text": ">>隨機分隊<<", "hoverEvent": {"action": "show_text", "contents": "點我隨機分隊"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/random_team/click"}}, "\\n\\n       ", {"text": ">>開始遊戲<<", "hoverEvent": {"action": "show_text", "contents": "點我開始/取消遊戲"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/start"}}]'], author: "Alex Cai", title: "強化空島戰爭 Lite"}]

item replace entity @s hotbar.1 with written_book[written_book_content={pages: ['["         ", {"text": "遊戲設定", "color": "aqua", "bold": true}, "\\n\\n", {"text": "自然回血：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則玩家的血量無法自然恢復"]}}, {"selector": "@e[type=marker, tag=setting, scores={regeneration=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"自然回血\\", objective: regeneration}"}}, "\\n", {"text": "摔落傷害：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則玩家不會受到摔落傷害"]}}, {"selector": "@e[type=marker, tag=setting, scores={fall_damage=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"摔落傷害\\", objective: fall_damage}"}}, "\\n", {"text": "火焰傷害：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則玩家不會受到火焰傷害"]}}, {"selector": "@e[type=marker, tag=setting, scores={fire_damage=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"火焰傷害\\", objective: fire_damage}"}}, "\\n", {"text": "無限水源：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則無法製作無限水源"]}}, {"selector": "@e[type=marker, tag=setting, scores={water_source=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"無限水源\\", objective: water_source}"}}, "\\n", {"text": "無限岩漿源：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則可以製作無限岩漿源"]}}, {"selector": "@e[type=marker, tag=setting, scores={lava_source=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"無限岩漿源\\", objective: lava_source}"}}, "\\n", {"translate": "block.minecraft.obsidian", "extra": ["恢復："], "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n只要把", {"translate": "item.minecraft.bucket"}, "丟到", {"translate": "block.minecraft.obsidian"}, "上\\n就會變回", {"translate": "item.minecraft.lava_bucket"}]}}, {"selector": "@e[type=marker, tag=setting, scores={obsidian_back=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"\\\\\\", {\\\\\\"translate\\\\\\": \\\\\\"block.minecraft.obsidian\\\\\\"}, \\\\\\"恢復\\", objective: obsidian_back}"}}, "\\n", {"translate": "block.minecraft.bedrock", "extra": ["地板："], "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則Y = -64會鋪上一層", {"translate": "block.minecraft.bedrock"}]}}, {"selector": "@e[type=marker, tag=setting, scores={bedrock_floor=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/bedrock_floor"}}, "\\n", {"text": "弓箭合成：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則無法合成", {"translate": "item.minecraft.bow"}, "、", {"translate": "item.minecraft.crossbow"}, "和", {"translate": "item.minecraft.arrow"}]}}, {"selector": "@e[type=marker, tag=setting, scores={craft_projectile=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"弓箭合成\\", objective: craft_projectile}"}}, "\\n", {"text": "斧頭合成：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則無法合成斧頭"]}}, {"selector": "@e[type=marker, tag=setting, scores={craft_axe=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"斧頭合成\\", objective: craft_axe}"}}, "\\n", {"translate": "item.minecraft.shield", "extra": ["合成："], "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則無法合成", {"translate": "item.minecraft.shield"}]}}, {"selector": "@e[type=marker, tag=setting, scores={craft_shield=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"盾牌合成\\", objective: craft_shield}"}}, "\\n", {"text": "初始物資：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則遊戲開始時\\n玩家會獲得設定的物品"]}}, {"selector": "@e[type=marker, tag=setting, scores={start_resource=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/start_resource/click"}}, "\\n ", {"text": ">>編輯<<", "hoverEvent": {"action": "show_text", "contents": "點我開始設定初始物資"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/start_resource/edit_mode"}}, " ", {"text": ">>", "extra": [{"translate": "gui.done"}, "<<"], "hoverEvent": {"action": "show_text", "contents": "點我儲存初始物資"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/start_resource/done"}}, " ", {"text": ">>", "extra": [{"translate": "gui.cancel"}, "<<"], "hoverEvent": {"action": "show_text", "contents": "點我取消設定初始物資\\n並恢復到設定前的樣子"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/start_resource/cancel"}}]'], author: "Alex Cai", title: "強化空島戰爭 Lite 遊戲設定"}]

item replace entity @s hotbar.2 with written_book[written_book_content={pages: ['["      ", {"text": "機率與事件設定", "color": "aqua", "bold": true}, "\\n\\n", {"text": "鐵礦狂熱：", "hoverEvent": {"action": "show_text", "contents": ["挖掘", {"translate": "block.minecraft.cobblestone"}, "時\\n有機率獲得", {"translate": "item.minecraft.iron_ingot"}]}}, {"text": "-10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: remove, objective: iron_ingot, value: 10, option: \\"鐵礦\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: remove, objective: iron_ingot, value: 1, option: \\"鐵礦\\"}"}}, " ", {"score": {"name": "#chance", "objective": "iron_ingot"}, "color": "gold", "extra": ["%"]}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: add, objective: iron_ingot, value: 1, option: \\"鐵礦\\"}"}}, " ", {"text": "+10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: add, objective: iron_ingot, value: 10, option: \\"鐵礦\\"}"}}, "\\n", {"text": "金礦狂熱：", "hoverEvent": {"action": "show_text", "contents": ["挖掘", {"translate": "block.minecraft.cobblestone"}, "時\\n有機率獲得", {"translate": "item.minecraft.gold_ingot"}]}}, {"text": "-10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: remove, objective: gold_ingot, value: 10, option: \\"金礦\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: remove, objective: gold_ingot, value: 1, option: \\"金礦\\"}"}}, " ", {"score": {"name": "#chance", "objective": "gold_ingot"}, "color": "gold", "extra": ["%"]}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: add, objective: gold_ingot, value: 1, option: \\"金礦\\"}"}}, " ", {"text": "+10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: add, objective: gold_ingot, value: 10, option: \\"金礦\\"}"}}, "\\n", {"text": "鑽石狂熱：", "hoverEvent": {"action": "show_text", "contents": ["挖掘", {"translate": "block.minecraft.cobblestone"}, "時\\n有機率獲得", {"translate": "item.minecraft.diamond"}]}}, {"text": "-10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: remove, objective: diamond, value: 10, option: \\"鑽石\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: remove, objective: diamond, value: 1, option: \\"鑽石\\"}"}}, " ", {"score": {"name": "#chance", "objective": "diamond"}, "color": "gold", "extra": ["%"]}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: add, objective: diamond, value: 1, option: \\"鑽石\\"}"}}, " ", {"text": "+10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/fanatic {operation: add, objective: diamond, value: 10, option: \\"鑽石\\"}"}}, "\\n\\n", {"text": "致命絕殺：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則經過一定時間後\\n中間會出現", {"translate": "entity.minecraft.wither"}]}}, {"selector": "@e[type=marker, tag=setting, scores={wither=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"致命絕殺\\", objective: wither}"}}, "\\n", {"text": "絕殺倒數：", "hoverEvent": {"action": "show_text", "contents": "致命絕殺的發生時間"}}, " ", {"text": "-5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: remove, objective: wither, value: 5, option: \\"絕殺\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: remove, objective: wither, value: 1, option: \\"絕殺\\"}"}}, " ", {"score": {"name": "#minute", "objective": "wither"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: add, objective: wither, value: 1, option: \\"絕殺\\"}"}}, " ", {"text": "+5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: add, objective: wither, value: 5, option: \\"絕殺\\"}"}}, " 分\\n", {"text": "限高限地：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則經過一定時間後\\n玩家超過指定的Y座標會受到", {"translate": "effect.minecraft.wither"}]}}, {"selector": "@e[type=marker, tag=setting, scores={limit=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"限高限地\\", objective: limit}"}}, "\\n", {"text": "限制倒數：", "hoverEvent": {"action": "show_text", "contents": "限高限地的發生時間"}}, " ", {"text": "-5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: remove, objective: limit, value: 5, option: \\"限制\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: remove, objective: limit, value: 1, option: \\"限制\\"}"}}, " ", {"score": {"name": "#minute", "objective": "limit"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: add, objective: limit, value: 1, option: \\"限制\\"}"}}, " ", {"text": "+5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/minute {operation: add, objective: limit, value: 5, option: \\"限制\\"}"}}, " 分\\n", {"text": "限制制空：", "hoverEvent": {"action": "show_text", "contents": "玩家能達到的最高高度"}}, "\\n   ", {"text": "-50", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: remove, name: \\"#highest\\", value: 50, option: \\"制空\\"}"}}, " ", {"text": "-10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: remove, name: \\"#highest\\", value: 10, option: \\"制空\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: remove, name: \\"#highest\\", value: 1, option: \\"制空\\"}"}}, " ", {"score": {"name": "#highest", "objective": "limit"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: add, name: \\"#highest\\", value: 1, option: \\"制空\\"}"}}, " ", {"text": "+10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: add, name: \\"#highest\\", value: 10, option: \\"制空\\"}"}}, " ", {"text": "+50", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: add, name: \\"#highest\\", value: 50, option: \\"制空\\"}"}}, "\\n", {"text": "限制遁地：", "hoverEvent": {"action": "show_text", "contents": "玩家能達到的最低高度"}}, "\\n   ", {"text": "-50", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: remove, name: \\"#lowest\\", value: 50, option: \\"遁地\\"}"}}, " ", {"text": "-10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: remove, name: \\"#lowest\\", value: 10, option: \\"遁地\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: remove, name: \\"#lowest\\", value: 1, option: \\"遁地\\"}"}}, " ", {"score": {"name": "#lowest", "objective": "limit"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: add, name: \\"#lowest\\", value: 1, option: \\"遁地\\"}"}}, " ", {"text": "+10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: add, name: \\"#lowest\\", value: 10, option: \\"遁地\\"}"}}, " ", {"text": "+50", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/3/event/limit {operation: add, name: \\"#lowest\\", value: 50, option: \\"遁地\\"}"}}]'], author: "Alex Cai", title: "強化空島戰爭 Lite 機率與事件設定"}]

item replace entity @s hotbar.3 with written_book[written_book_content={pages: ['["         ", {"text": "邊界設定", "color": "aqua", "bold": true}, "\\n\\n", {"text": "初始邊界：", "hoverEvent": {"action": "show_text", "contents": "初始的邊界尺寸"}}, {"text": "-10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/origin {operation: remove, value: 10}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/origin {operation: remove, value: 1}"}}, " ", {"score": {"name": "#origin", "objective": "border"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/origin {operation: add, value: 1}"}}, " ", {"text": "+10", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/origin {operation: add, value: 10}"}}, "\\n", {"text": "邊界縮圈：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則邊界會在指定的時間後開始收縮\\n並在指定的時間後收縮到指定的大小"]}}, {"selector": "@e[type=marker, tag=setting, scores={border=1}, y=-63.5]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/exchange {option: \\"邊界縮圈\\", objective: border}"}}, "\\n\\n遊戲開始\\n", {"text": "-5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: remove, name: \\"#minute\\", value: 5, option: \\"開始縮圈\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: remove, name: \\"#minute\\", value: 1, option: \\"開始縮圈\\"}"}}, " ", {"score": {"name": "#minute", "objective": "border"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: add, name: \\"#minute\\", value: 1, option: \\"開始縮圈\\"}"}}, " ", {"text": "+5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: add, name: \\"#minute\\", value: 5, option: \\"開始縮圈\\"}"}}, " 分鐘後\\n邊界會開始收縮\\n\\n開始收縮\\n", {"text": "-5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: remove, name: \\"#shrink\\", value: 5, option: \\"縮圈經過\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: remove, name: \\"#shrink\\", value: 1, option: \\"縮圈經過\\"}"}}, " ", {"score": {"name": "#shrink", "objective": "border"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: add, name: \\"#shrink\\", value: 1, option: \\"縮圈經過\\"}"}}, " ", {"text": "+5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: add, name: \\"#shrink\\", value: 5, option: \\"縮圈經過\\"}"}}, " 分鐘後\\n\\n邊界會收縮到\\n", {"text": "-5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/size {operation: remove, name: \\"#size\\", value: 5, option: \\"縮圈大小\\"}"}}, " ", {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/time {operation: remove, name: \\"#size\\", value: 1, option: \\"縮圈大小\\"}"}}, " ", {"score": {"name": "#size", "objective": "border"}, "color": "gold"}, " × ", {"score": {"name": "#size", "objective": "border"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/size {operation: add, name: \\"#size\\", value: 1, option: \\"縮圈大小\\"}"}}, " ", {"text": "+5", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/4/border/size {operation: add, name: \\"#size\\", value: 5, option: \\"縮圈大小\\"}"}}, " 格大小"]'], author: "Alex Cai", title: "強化空島戰爭 Lite 邊界設定"}]