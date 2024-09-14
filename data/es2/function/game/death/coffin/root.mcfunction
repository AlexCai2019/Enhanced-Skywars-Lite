setblock ~ ~ ~ chest[type=right] destroy
setblock ~-1 ~ ~ chest[type=left] destroy

item replace block ~ ~ ~ container.0 from entity @s hotbar.0
item replace block ~ ~ ~ container.1 from entity @s hotbar.1
item replace block ~ ~ ~ container.2 from entity @s hotbar.2
item replace block ~ ~ ~ container.3 from entity @s hotbar.3
item replace block ~ ~ ~ container.4 from entity @s hotbar.4
item replace block ~ ~ ~ container.5 from entity @s hotbar.5
item replace block ~ ~ ~ container.6 from entity @s hotbar.6
item replace block ~ ~ ~ container.7 from entity @s hotbar.7
item replace block ~ ~ ~ container.8 from entity @s hotbar.8

item replace block ~ ~ ~ container.9 from entity @s inventory.0
item replace block ~ ~ ~ container.10 from entity @s inventory.1
item replace block ~ ~ ~ container.11 from entity @s inventory.2
item replace block ~ ~ ~ container.12 from entity @s inventory.3
item replace block ~ ~ ~ container.13 from entity @s inventory.4
item replace block ~ ~ ~ container.14 from entity @s inventory.5
item replace block ~ ~ ~ container.15 from entity @s inventory.6
item replace block ~ ~ ~ container.16 from entity @s inventory.7
item replace block ~ ~ ~ container.17 from entity @s inventory.8

item replace block ~ ~ ~ container.18 from entity @s inventory.9
item replace block ~ ~ ~ container.19 from entity @s inventory.10
item replace block ~ ~ ~ container.20 from entity @s inventory.11
item replace block ~ ~ ~ container.21 from entity @s inventory.12
item replace block ~ ~ ~ container.22 from entity @s inventory.13
item replace block ~ ~ ~ container.23 from entity @s inventory.14
item replace block ~ ~ ~ container.24 from entity @s inventory.15
item replace block ~ ~ ~ container.25 from entity @s inventory.16
item replace block ~ ~ ~ container.26 from entity @s inventory.17

item replace block ~-1 ~ ~ container.0 from entity @s inventory.18
item replace block ~-1 ~ ~ container.1 from entity @s inventory.19
item replace block ~-1 ~ ~ container.2 from entity @s inventory.20
item replace block ~-1 ~ ~ container.3 from entity @s inventory.21
item replace block ~-1 ~ ~ container.4 from entity @s inventory.22
item replace block ~-1 ~ ~ container.5 from entity @s inventory.23
item replace block ~-1 ~ ~ container.6 from entity @s inventory.24
item replace block ~-1 ~ ~ container.7 from entity @s inventory.25
item replace block ~-1 ~ ~ container.8 from entity @s inventory.26

item replace block ~-1 ~ ~ container.9 from entity @s armor.head
item replace block ~-1 ~ ~ container.10 from entity @s armor.chest
item replace block ~-1 ~ ~ container.11 from entity @s armor.legs
item replace block ~-1 ~ ~ container.12 from entity @s armor.feet
item replace block ~-1 ~ ~ container.13 from entity @s weapon.offhand
item replace block ~-1 ~ ~ container.14 from entity @s player.crafting.0
item replace block ~-1 ~ ~ container.15 from entity @s player.crafting.1
item replace block ~-1 ~ ~ container.16 from entity @s player.crafting.2
item replace block ~-1 ~ ~ container.17 from entity @s player.crafting.3

item replace block ~-1 ~ ~ container.18 from entity @s player.cursor
clear

#經驗值
execute store result score #points experience run xp query @s points
execute store result score #level_points experience run function es2:game/death/coffin/from_level
scoreboard players operation #points experience += #level_points experience
xp set @s 0 levels
xp set @s 0 points

#經驗值放進箱子裡
execute if score #points experience matches 0 run return fail
execute if score #points experience matches 101.. run scoreboard players set #points experience 100
loot replace block ~-1 ~ ~ container.19 1 loot es2:experence
execute store result block ~-1 ~ ~ Items[{Slot: 19b}].components."minecraft:custom_data".xp_value int 1 run scoreboard players get #points experience