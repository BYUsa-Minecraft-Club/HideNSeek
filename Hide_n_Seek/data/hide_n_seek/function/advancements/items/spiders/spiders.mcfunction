#set spider spawning
scoreboard players add @s hide_n_seek.spider_count 5

#spawn spiders
execute at @s run function hide_n_seek:advancements/items/spiders/spawn_spider

#replace correct hand with air
execute unless items entity @s weapon.mainhand music_disc_chirp[custom_model_data=10003] run execute if items entity @s weapon.offhand music_disc_chirp[custom_model_data=10003] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand music_disc_chirp[custom_model_data=10003] run item replace entity @s weapon.mainhand with minecraft:air
