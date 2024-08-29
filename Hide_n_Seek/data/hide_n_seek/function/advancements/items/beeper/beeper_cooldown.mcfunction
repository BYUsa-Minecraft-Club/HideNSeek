#remove 1 from beeper cooldown
scoreboard players remove @s hide_n_seek.beeper_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.beeper_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/beeper/beeper_cooldown
#reset beeper cooldown
scoreboard players reset @s hide_n_seek.beeper_cooldown
