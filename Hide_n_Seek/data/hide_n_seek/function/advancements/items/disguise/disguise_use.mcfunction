#check if cooldown is done
execute unless score @s hide_n_seek.disguise_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/disguise/disguise
#revoke advancements
advancement revoke @s only hide_n_seek:items/disguise/disguise
advancement revoke @s only hide_n_seek:items/disguise/disguise_cooldown
#set disguise cooldown
execute unless score @s hide_n_seek.disguise_cooldown matches 1.. run scoreboard players set @s hide_n_seek.disguise_cooldown 10
execute if score @s hide_n_seek.disguise_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.disguise_cooldown 2
