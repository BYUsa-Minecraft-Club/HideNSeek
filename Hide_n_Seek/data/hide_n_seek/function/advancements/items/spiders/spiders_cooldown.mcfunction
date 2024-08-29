#remove 1 from spiders cooldown
scoreboard players remove @s hide_n_seek.spiders_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.spiders_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/spiders/spiders_cooldown
#reset spiders cooldown
scoreboard players reset @s hide_n_seek.spiders_cooldown
