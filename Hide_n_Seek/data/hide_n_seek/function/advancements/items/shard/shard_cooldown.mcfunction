#remove 1 from shard cooldown
scoreboard players remove @s hide_n_seek.shard_cooldown 1
#check to reset this advancement
execute if score @s hide_n_seek.shard_cooldown matches 1.. run return run advancement revoke @s only hide_n_seek:items/shard/shard_cooldown
#reset shard cooldown
scoreboard players reset @s hide_n_seek.shard_cooldown
