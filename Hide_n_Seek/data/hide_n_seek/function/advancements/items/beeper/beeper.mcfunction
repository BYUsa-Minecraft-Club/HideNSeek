#set distance old as distance new
execute store result score @s hide_n_seek.distance_old run scoreboard players get @s hide_n_seek.distance_new

#reset distance
scoreboard players set @s hide_n_seek.distance_new 0
scoreboard players set @s hide_n_seek.distance_difference 0

#measuring
#measure players current position
execute store result score @s hide_n_seek.position_seeker.x run data get entity @s Pos[0]
execute store result score @s hide_n_seek.position_seeker.y run data get entity @s Pos[1]
execute store result score @s hide_n_seek.position_seeker.z run data get entity @s Pos[2]
#measure nearest hider's position
execute store result score @s hide_n_seek.position_hider.x run data get entity @e[limit=1,sort=nearest,team=Hiders] Pos[0]
execute store result score @s hide_n_seek.position_hider.y run data get entity @e[limit=1,sort=nearest,team=Hiders] Pos[1]
execute store result score @s hide_n_seek.position_hider.z run data get entity @e[limit=1,sort=nearest,team=Hiders] Pos[2]

#calculations
#calculate the difference positions
scoreboard players operation @s hide_n_seek.position_seeker.x -= @s hide_n_seek.position_hider.x
scoreboard players operation @s hide_n_seek.position_seeker.y -= @s hide_n_seek.position_hider.y
scoreboard players operation @s hide_n_seek.position_seeker.z -= @s hide_n_seek.position_hider.z
#square the differences
scoreboard players operation @s hide_n_seek.position_seeker.x *= @s hide_n_seek.position_seeker.x
scoreboard players operation @s hide_n_seek.position_seeker.y *= @s hide_n_seek.position_seeker.y
scoreboard players operation @s hide_n_seek.position_seeker.z *= @s hide_n_seek.position_seeker.z
#add differences together
scoreboard players operation @s hide_n_seek.distance_new += @s hide_n_seek.position_seeker.x
scoreboard players operation @s hide_n_seek.distance_new += @s hide_n_seek.position_seeker.y
scoreboard players operation @s hide_n_seek.distance_new += @s hide_n_seek.position_seeker.z

#compare distances
scoreboard players operation @s hide_n_seek.distance_difference += @s hide_n_seek.distance_old
scoreboard players operation @s hide_n_seek.distance_difference -= @s hide_n_seek.distance_new
#same distance
title @s times 1s 3s 1s
execute if score @s hide_n_seek.distance_difference matches 0 run return run title @s actionbar {"text":"same","color":"gray"}
#closer
execute if score @s hide_n_seek.distance_difference matches 1..1000000 as @s run return run function hide_n_seek:advancements/items/beeper/beeper_warmer
#farther
execute if score @s hide_n_seek.distance_difference matches -1000000..-1 run return run function hide_n_seek:advancements/items/beeper/beeper_cooler
#too far
