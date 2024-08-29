#check if cooldown is done
execute unless score @s hide_n_seek.smoke_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/smoke/smoke
#revoke advancements
advancement revoke @s only hide_n_seek:items/smoke/smoke
advancement revoke @s only hide_n_seek:items/smoke/smoke_cooldown
#set smoke cooldown
execute unless score @s hide_n_seek.smoke_cooldown matches 1.. run scoreboard players set @s hide_n_seek.smoke_cooldown 100
execute if score @s hide_n_seek.smoke_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.smoke_cooldown 2
