#checks if the player is still in spectator or creative
execute if entity @s[gamemode=spectator] run return run title @s actionbar {"text":"can't use yet","color":"gray"}
execute if entity @s[gamemode=creative] run return run title @s actionbar {"text":"can't use in creative","color":"gray"}

#sound effect
playsound minecraft:block.end_portal.spawn master @a[distance=0..13] ~ ~ ~ 0.1 2 0
playsound minecraft:block.enchantment_table.use master @a[distance=0..13] ~ ~ ~ 1 2 0
playsound minecraft:block.amethyst_cluster.step master @a[distance=0..13] ~ ~ ~ 0.3 2 0

#particle effect
execute at @s run particle minecraft:enchant ~ ~2 ~ 0 0.5 0 13 1000 force

#spectator
scoreboard players set @s hide_n_seek.shard_spectator 181
gamemode spectator @s[team=Hiders]
function hide_n_seek:advancements/items/shard/shard_spectator

#replace correct hand with air
execute unless items entity @s weapon.mainhand echo_shard[custom_model_data=10003] run execute if items entity @s weapon.offhand echo_shard[custom_model_data=10003] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand echo_shard[custom_model_data=10003] run item replace entity @s weapon.mainhand with minecraft:air
