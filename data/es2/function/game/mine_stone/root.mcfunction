execute if score #chance iron_ingot matches 1..99 run function es2:game/mine_stone/check {item: iron_ingot}
execute if score #chance iron_ingot matches 100 run function es2:game/mine_stone/give {item: iron_ingot}

execute if score #chance gold_ingot matches 1..99 run function es2:game/mine_stone/check {item: gold_ingot}
execute if score #chance gold_ingot matches 100 run function es2:game/mine_stone/give {item: gold_ingot}

execute if score #chance diamond matches 1..99 run function es2:game/mine_stone/check {item: diamond}
execute if score #chance diamond matches 100 run function es2:game/mine_stone/give {item: diamond}

scoreboard players set @s mine_stone 0