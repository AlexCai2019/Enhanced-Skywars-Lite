execute store result score @s fanatic run random value 0..99
$execute if score @s fanatic < #$(item) fanatic run function es2:game/mine_stone/give {item: $(item)}