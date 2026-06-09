#reset advancement
advancement revoke @s only hide_n_seek:found

#turn player into seeker
team join Seekers @s
scoreboard players operation @s HIDE_N_SEEK = countdown hide_n_seek.variables
scoreboard players display numberformat @s HIDE_N_SEEK styled {"color":"gray"}
execute if score countdown.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:advancements/found_sidebar_0 with storage hide_n_seek:timer
execute unless score countdown.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:advancements/found_sidebar with storage hide_n_seek:timer
#effects
effect give @s minecraft:glowing 11 0 true
effect give @s minecraft:speed 220 1 true
effect give @s minecraft:jump_boost 220 1 true
#gear
item replace entity @a[team=Seekers] armor.chest with elytra[unbreakable={},enchantments={"binding_curse":1,"vanishing_curse":1},tooltip_display={hidden_components:["unbreakable","enchantments"]},enchantment_glint_override=false]
give @s firework_rocket[enchantments={"vanishing_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false] 13

#sound effect
playsound minecraft:entity.firework_rocket.blast master @a[distance=..13] ~ ~ ~
