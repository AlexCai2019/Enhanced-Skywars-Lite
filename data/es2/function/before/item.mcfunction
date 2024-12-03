#清除設定書掉落物
execute if items entity @s contents written_book[custom_data~{special_book: true}] run return run kill
tag @s add lobby_check