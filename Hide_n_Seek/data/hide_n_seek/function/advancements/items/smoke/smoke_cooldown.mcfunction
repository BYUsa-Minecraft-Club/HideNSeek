#remove 1 from smoke cooldown
scoreboard players remove @s hide_n_seek.smoke_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.smoke_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/smoke/smoke_cooldown
#reset smoke cooldown
scoreboard players reset @s hide_n_seek.smoke_cooldown
