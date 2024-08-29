#check for trigger set to
execute store result score ?hide_n_seek give_hider_hiding_item run scoreboard players get @r[tag=admin,scores={give_hider_hiding_item=1..}] give_hider_hiding_item

#give hiders item(s)
execute if score ?hide_n_seek give_hider_hiding_item matches 1 as @a[team=Hiders] run loot give @s loot hide_n_seek:empty/hider/hiding_1
execute if score ?hide_n_seek give_hider_hiding_item matches 2 as @a[team=Hiders] run loot give @s loot hide_n_seek:empty/hider/hiding_2
execute if score ?hide_n_seek give_hider_hiding_item matches 3 as @a[team=Hiders] run loot give @s loot hide_n_seek:empty/hider/hiding_3
execute unless score ?hide_n_seek give_hider_hiding_item matches 1..3 as @a[team=Hiders] run loot give @s loot hide_n_seek:empty/hider/hiding

#reset give hider item trigger
execute as @a[tag=admin] run scoreboard players set @s give_hider_hiding_item 0
