#check if cooldown is done
execute unless score @s hide_n_seek.sidekick_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/sidekick/sidekick
#revoke advancements
advancement revoke @s only hide_n_seek:items/sidekick/sidekick
advancement revoke @s only hide_n_seek:items/sidekick/sidekick_cooldown
#set sidekick cooldown
execute unless score @s hide_n_seek.sidekick_cooldown matches 1.. run scoreboard players set @s hide_n_seek.sidekick_cooldown 20
execute if score @s hide_n_seek.sidekick_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.sidekick_cooldown 2
