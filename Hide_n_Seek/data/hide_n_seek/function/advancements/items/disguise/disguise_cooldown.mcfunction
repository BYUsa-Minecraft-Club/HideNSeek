#remove 1 from disguise cooldown
scoreboard players remove @s hide_n_seek.disguise_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.disguise_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/disguise/disguise_cooldown
#reset disguise cooldown
scoreboard players reset @s hide_n_seek.disguise_cooldown
