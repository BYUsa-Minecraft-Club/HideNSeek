#reset advancement
advancement revoke @s only hide_n_seek:one_sec

#effects
effect clear @s speed
effect clear @s jump_boost
effect give @s minecraft:slowness 3 12 true
effect give @s minecraft:slowness 13 2 true
effect give @s minecraft:blindness 3 1 true
effect give @s minecraft:darkness 7 1 true

#disable wings
item replace entity @s armor.chest with elytra[damage=432,enchantments={"binding_curse":1,"vanishing_curse":1}, enchantment_glint_override=false]

#sound effect
playsound minecraft:block.anvil.land master @a[distance=..13] ~ ~ ~
