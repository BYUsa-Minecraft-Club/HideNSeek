#check for hider items used
execute as @a[team=Hiders] if score @s hide_n_seek.hider_item matches 1.. run function hide_n_seek:items/hider_items

#check for seeker items used
execute as @a[team=Seekers] if score @s hide_n_seek.seeker_item matches 1.. run function hide_n_seek:items/seeker_items

schedule function hide_n_seek:items/item_use_check 1t
