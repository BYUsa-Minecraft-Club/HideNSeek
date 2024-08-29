#remove 1 from sidekick cooldown
scoreboard players remove @s hide_n_seek.sidekick_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.sidekick_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/sidekick/sidekick_cooldown
#reset sidekick cooldown
scoreboard players reset @s hide_n_seek.sidekick_cooldown
