#remove 1 from dummy cooldown
scoreboard players remove @s hide_n_seek.dummy_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.dummy_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/dummy/dummy_cooldown
#reset dummy cooldown
scoreboard players reset @s hide_n_seek.dummy_cooldown
