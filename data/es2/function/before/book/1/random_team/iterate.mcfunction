scoreboard players add #index team_setting 1
execute if score #index team_setting = #team team_setting run scoreboard players set #index team_setting 0

execute if score #index team_setting matches 0 run return run team join red
execute if score #index team_setting matches 1 run return run team join blue
execute if score #index team_setting matches 2 run return run team join green
team join yellow