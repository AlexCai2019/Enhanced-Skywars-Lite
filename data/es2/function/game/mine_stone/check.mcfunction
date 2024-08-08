$execute store result score @s $(item) run random value 0..99
$execute if score @s $(item) < #chance $(item) run function es2:game/mine_stone/give {item: $(item)}