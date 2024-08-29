#check if cooldown is done
execute unless score @s hide_n_seek.shard_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/shard/shard
#revoke advancements
advancement revoke @s only hide_n_seek:items/shard/shard
advancement revoke @s only hide_n_seek:items/shard/shard_cooldown
#set shard cooldown
execute unless score @s hide_n_seek.shard_cooldown matches 1.. run scoreboard players set @s hide_n_seek.shard_cooldown 20
execute if score @s hide_n_seek.shard_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.shard_cooldown 2
