#sound effect
playsound minecraft:block.fire.extinguish master @a[distance=0..20] ~ ~ ~ 1 1 0
playsound entity.breeze.shoot master @a[distance=0..20] ~ ~ ~ 1 1 0

#create smoke cloud at user
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 2.5 2 2.5 0.01 2000 force
execute at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 2.5 2 2.5 0.01 5000 force

#replace correct hand with air
execute unless items entity @s weapon.mainhand music_disc_11[custom_model_data=10002] run execute if items entity @s weapon.offhand music_disc_11[custom_model_data=10002] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand music_disc_11[custom_model_data=10002] run item replace entity @s weapon.mainhand with minecraft:air
