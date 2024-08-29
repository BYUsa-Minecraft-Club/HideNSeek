#check if cooldown is done
execute unless score @s hide_n_seek.dummy_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/dummy/dummy
#revoke advancements
advancement revoke @s only hide_n_seek:items/dummy/dummy
advancement revoke @s only hide_n_seek:items/dummy/dummy_cooldown
#set dummy cooldown
execute unless score @s hide_n_seek.dummy_cooldown matches 1.. run scoreboard players set @s hide_n_seek.dummy_cooldown 60
execute if score @s hide_n_seek.dummy_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.dummy_cooldown 2
