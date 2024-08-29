#store block search value in storage for macro use
execute store result storage minecraft:hide_n_seek blocks int 1 run scoreboard players get @r[tag=admin,scores={block_search=1..}] block_search
#run block search with chosen block range
function hide_n_seek:triggers/block_search with storage minecraft:hide_n_seek

#reset block_search trigger
execute as @a[tag=admin] run scoreboard players set @s block_search 0
