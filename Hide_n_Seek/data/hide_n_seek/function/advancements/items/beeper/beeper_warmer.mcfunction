#readout to player
title @s times 1s 3s 1s
title @s actionbar {"text":"warmer","color":"gold"}
#sound effect
playsound minecraft:entity.player.hurt_on_fire master @s ~ ~ ~ 1 1 1
#particle effect
particle minecraft:trial_spawner_detection ~ ~ ~ 0 0 0 0.03 100 force
#life cost
damage @s 85 minecraft:dry_out

#decrease durability of beeper making sure they gained information and checking whether it's in the main or off hand
#decrease durability
execute unless items entity @s weapon.mainhand music_disc_precipice[custom_model_data=10002] run execute if items entity @s weapon.offhand music_disc_precipice[custom_model_data=10002] run item modify entity @s weapon.offhand hide_n_seek:beeper_durability_decrease
execute if items entity @s weapon.mainhand music_disc_precipice[custom_model_data=10002] run item modify entity @s weapon.mainhand hide_n_seek:beeper_durability_decrease
#play breaking sound if damage is 10
execute unless items entity @s weapon.mainhand music_disc_precipice[custom_model_data=10002,damage=10] run execute if items entity @s weapon.offhand music_disc_precipice[custom_model_data=10002,damage=10] run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1 1
execute if items entity @s weapon.mainhand music_disc_precipice[custom_model_data=10002,damage=10] run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1 1
#replace correct hand with air if damage is 10
execute unless items entity @s weapon.mainhand music_disc_precipice[custom_model_data=10002,damage=10] run execute if items entity @s weapon.offhand music_disc_precipice[custom_model_data=10002,damage=10] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand music_disc_precipice[custom_model_data=10002,damage=10] run item replace entity @s weapon.mainhand with minecraft:air
