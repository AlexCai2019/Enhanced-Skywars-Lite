execute if entity @s[team=] run function es2:before/player/new_join

#效果
effect give @s resistance 10 10 true
effect give @s weakness 10 10 true
effect give @s saturation 10 10 true

#書本
item replace entity @s hotbar.0 with written_book[written_book_content={pages: ['["    ", {"text": "強化空島戰爭 Lite", "color": "aqua", "bold": true}, "\\n\\n", {"text": "開放選隊：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則玩家可以自行選擇隊伍"]}}, {"selector": "@e[type=marker, tag=setting, scores={team_setting=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/choose_team"}}, "\\n", {"text": "同隊傷害：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則同隊之間可以互相傷害"]}}, {"selector": "@e[type=marker, tag=setting, scores={friendly_fire=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/friendly_fire"}}, "\\n", {"text": "同隊推擠：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則同隊之間可以互相推擠"]}}, {"selector": "@e[type=marker, tag=setting, scores={friendly_push=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/friendly_push"}}, "\\n\\n    ", {"text": "分隊數量：", "hoverEvent": {"action": "show_text", "contents": "隨機分隊的數量"}}, {"text": "-", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/random_team/subtract"}}, " ", {"score": {"name": "#team", "objective": "team_setting"}, "color": "gold"}, " ", {"text": "+", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/random_team/add"}}, "\\n       ", {"text": ">>隨機分隊<<", "hoverEvent": {"action": "show_text", "contents": "點我隨機分隊"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/random_team/click"}}, "\\n\\n       ", {"text": ">>開始遊戲<<", "hoverEvent": {"action": "show_text", "contents": "點我開始/取消遊戲"}, "clickEvent": {"action": "run_command", "value": "/function es2:before/book/1/start"}}]'], author: "Alex Cai", title: "強化空島戰爭 Lite"}]

item replace entity @s hotbar.1 with written_book[written_book_content={pages: ['["          ", {"text": "遊戲設定", "color": "aqua", "bold": true}, "\\n\\n", {"text": "自然回血：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則玩家的血量無法自然恢復"]}}, {"selector": "@e[type=marker, tag=setting, scores={regeneration=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/regeneration"}}, "\\n", {"text": "無限水源：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.off", "color": "red"}, "\\n則無法製作無限水源"]}}, {"selector": "@e[type=marker, tag=setting, scores={water_source=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/water_source"}}, "\\n", {"text": "無限岩漿源：", "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n則可以製作無限水源"]}}, {"selector": "@e[type=marker, tag=setting, scores={lava_source=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/lava_source"}}, "\\n", {"translate": "block.minecraft.obsidian", "extra": ["恢復："], "hoverEvent": {"action": "show_text", "contents": ["若設定為", {"translate": "options.on", "color": "green"}, "\\n只要把", {"translate": "item.minecraft.bucket"}, "丟到", {"translate": "block.minecraft.obsidian"}, "上\\n就會變回", {"translate": "item.minecraft.lava_bucket"}]}}, {"selector": "@e[type=marker, tag=setting, scores={obsidian_back=1}]", "clickEvent": {"action": "run_command", "value": "/function es2:before/book/2/obsidian_back"}}]'], author: "Alex Cai", title: "強化空島戰爭 Lite 遊戲設定"}]