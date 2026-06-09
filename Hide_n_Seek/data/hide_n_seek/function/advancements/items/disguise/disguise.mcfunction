#play sound effect
playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.75 1

#activate disguise
scoreboard players operation @s hide_n_seek.undercover += 60 hide_n_seek.variables
effect clear @s minecraft:glowing

#replace correct hand with air
execute unless items entity @s weapon.mainhand poisonous_potato[custom_data={disguise:1b}] run execute if items entity @s weapon.offhand poisonous_potato[custom_data={disguise:1b}] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand poisonous_potato[custom_data={disguise:1b}] run item replace entity @s weapon.mainhand with minecraft:air
