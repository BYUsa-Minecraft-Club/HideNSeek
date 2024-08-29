#check if cooldown is done
execute unless score @s hide_n_seek.spiders_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/spiders/spiders
#revoke advancements
advancement revoke @s only hide_n_seek:items/spiders/spiders
advancement revoke @s only hide_n_seek:items/spiders/spiders_cooldown
#set spiders cooldown
execute unless score @s hide_n_seek.spiders_cooldown matches 1.. run scoreboard players set @s hide_n_seek.spiders_cooldown 100
execute if score @s hide_n_seek.spiders_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.spiders_cooldown 2
