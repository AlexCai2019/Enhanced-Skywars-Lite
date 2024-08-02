team join red @r[team=]
team join blue @r[team=]
execute if score #team team_setting matches 3.. run team join green @r[team=]
execute if score #team team_setting matches 4 run team join yellow @r[team=]
execute if entity @a[team=] run function es2:before/book/1/random_team/recursive