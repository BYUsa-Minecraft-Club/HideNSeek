#reset advancement
advancement revoke @s only hide_n_seek:found

#turn player into seeker
team join Seekers @s
scoreboard players operation @s HIDE_N_SEEK = countdown variables
#effects
effect give @s minecraft:glowing 11 0 true
effect give @s minecraft:speed 220 1 true
effect give @s minecraft:jump_boost 220 1 true
#gear
item replace entity @a[team=Seekers] armor.chest with minecraft:elytra[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1}}]
give @s minecraft:firework_rocket 13

#sound effect
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~
