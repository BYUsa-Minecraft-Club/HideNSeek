#reset advancement
advancement revoke @s only hide_n_seek:found

#turn player into seeker
team join Seekers @s
scoreboard players operation @s HIDE_N_SEEK = countdown hide_n_seek.variables
execute if score countdown.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:advancements/found_sidebar_0 with storage minecraft:hide_n_seek
execute unless score countdown.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:advancements/found_sidebar with storage minecraft:hide_n_seek
#effects
effect give @s minecraft:glowing 11 0 true
effect give @s minecraft:speed 220 1 true
effect give @s minecraft:jump_boost 220 1 true
#gear
item replace entity @a[team=Seekers] armor.chest with elytra[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},show_in_tooltip:false},enchantment_glint_override=false]
give @s firework_rocket[enchantments={levels:{"minecraft:vanishing_curse":1},show_in_tooltip:false},enchantment_glint_override=false,fireworks={flight_duration:1}] 13

#sound effect
playsound minecraft:entity.firework_rocket.blast master @a[distance=..13] ~ ~ ~
