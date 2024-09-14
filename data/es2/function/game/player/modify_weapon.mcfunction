item modify entity @s weapon {function: "set_custom_data", tag: "{modified: true}"}

#根據舊版的邏輯 獄髓應該會比鑽石高1攻擊力
execute if items entity @s weapon netherite_sword run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 8, operation: "add_value", slot: "mainhand"}]}

execute if items entity @s weapon #es2:old_damage/7 run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 7, operation: "add_value", slot: "mainhand"}]}

execute if items entity @s weapon #es2:old_damage/6 run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 6, operation: "add_value", slot: "mainhand"}]}

execute if items entity @s weapon #es2:old_damage/5 run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 5, operation: "add_value", slot: "mainhand"}]}

execute if items entity @s weapon #es2:old_damage/4 run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 4, operation: "add_value", slot: "mainhand"}]}

execute if items entity @s weapon #es2:old_damage/3 run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 3, operation: "add_value", slot: "mainhand"}]}

execute if items entity @s weapon #es2:old_damage/2 run return run item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 2, operation: "add_value", slot: "mainhand"}]}

item modify entity @s weapon {function: "set_attributes", replace: true, modifiers: [{attribute: "generic.attack_damage", id: "base_attack_damage", amount: 1, operation: "add_value", slot: "mainhand"}]}