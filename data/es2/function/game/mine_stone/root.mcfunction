execute unless score #iron_ingot fanatic matches 0 run function es2:game/mine_stone/check {item: iron_ingot}
execute unless score #gold_ingot fanatic matches 0 run function es2:game/mine_stone/check {item: gold_ingot}
execute unless score #diamond fanatic matches 0 run function es2:game/mine_stone/check {item: diamond}

scoreboard players set @s mine_stone 0