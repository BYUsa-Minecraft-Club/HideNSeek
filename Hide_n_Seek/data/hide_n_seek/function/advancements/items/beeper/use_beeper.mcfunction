#check if cooldown is done
execute unless score @s hide_n_seek.beeper_cooldown matches 1.. as @s run function hide_n_seek:advancements/items/beeper/beeper
#revoke advancements
advancement revoke @s only hide_n_seek:items/beeper/beeper
advancement revoke @s only hide_n_seek:items/beeper/beeper_cooldown
#set beeper cooldown
execute unless score @s hide_n_seek.beeper_cooldown matches 1.. run scoreboard players set @s hide_n_seek.beeper_cooldown 20
execute if score @s hide_n_seek.beeper_cooldown matches 0..1 run scoreboard players set @s hide_n_seek.beeper_cooldown 2
