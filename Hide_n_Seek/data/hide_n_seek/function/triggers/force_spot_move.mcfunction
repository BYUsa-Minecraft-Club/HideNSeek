#reset force spot move trigger
execute as @a[tag=admin] run scoreboard players set @s force_spot_move 0

#alert players of the hiders' new effects
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 2 1
title @a times 1s 11s 1s
title @a[team=Hiders] actionbar "You are GLOWING. Run while you still can"
title @a[team=Seekers] actionbar "Your prey has been revealed"

#give hiders effects
effect give @e[team=Hiders] minecraft:glowing 3 0 true
effect give @a[team=Hiders] minecraft:invisibility 19 0 true
