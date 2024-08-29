#block search
#update trigger for all players
scoreboard players enable @a[tag=admin] block_search
scoreboard players reset @a[tag=!admin] block_search
#check if someone forced spot move
execute as @a[tag=admin] run execute unless score @s block_search matches 0 run function hide_n_seek:triggers/block_search_measure

#force spot move
#update trigger for all players
scoreboard players enable @a[tag=admin] force_spot_move
scoreboard players reset @a[tag=!admin] force_spot_move
#check if someone forced spot move
execute as @a[tag=admin] run execute unless score @s force_spot_move matches 0 run function hide_n_seek:triggers/force_spot_move

#random seeker
#update trigger for all players
scoreboard players enable @a[tag=admin] random_seeker
scoreboard players reset @a[tag=!admin] random_seeker
#check if someone forced spot move
execute as @a[tag=admin] run execute unless score @s random_seeker matches 0 run function hide_n_seek:triggers/random_seeker

#end game
#update trigger for all players
scoreboard players enable @a[tag=admin] end_hide_n_seek
scoreboard players reset @a[tag=!admin] end_hide_n_seek
#check if someone ended the game
execute as @a[tag=admin] run execute unless score @s end_hide_n_seek matches 0 run function hide_n_seek:end/end_hide_n_seek

#hider hiding item
#update trigger for all players
scoreboard players enable @a[tag=admin] give_hider_hiding_item
scoreboard players reset @a[tag=!admin] give_hider_hiding_item
#check if someone forced spot move
execute as @a[tag=admin] run execute unless score @s give_hider_hiding_item matches 0 run function hide_n_seek:triggers/give_hider_hiding_item

#hider escaping item
#update trigger for all players
scoreboard players enable @a[tag=admin] give_hider_escaping_item
scoreboard players reset @a[tag=!admin] give_hider_escaping_item
#check if someone forced spot move
execute as @a[tag=admin] run execute unless score @s give_hider_escaping_item matches 0 run function hide_n_seek:triggers/give_hider_escaping_item

#seeker item
#update trigger for all players
scoreboard players enable @a[tag=admin] give_seeker_item
scoreboard players reset @a[tag=!admin] give_seeker_item
#check if someone forced spot move
execute as @a[tag=admin] run execute unless score @s give_seeker_item matches 0 run function hide_n_seek:triggers/give_seeker_item

schedule function hide_n_seek:triggers/1t_trigger_check 1t
