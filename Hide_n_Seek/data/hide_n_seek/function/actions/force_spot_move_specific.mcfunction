#tag players to alert
$tag @p[team=Hiders, name=$(name)] add alert
tag @a[team=Seekers] add alert

#alert players of the hiders' new effects
playsound minecraft:block.bell.resonate master @a[tag=alert] ~ ~ ~ 1 2 1
title @a times 1s 11s 1s
title @a[team=Hiders, tag=alert] actionbar "Bad Spot. You are GLOWING. Run while you still can"
title @a[team=Seekers] actionbar "Your prey has been revealed"

#give hiders effects
effect give @e[team=Hiders, tag=alert] minecraft:glowing 3 0 true
effect give @a[team=Hiders, tag=alert] minecraft:invisibility 19 0 true

#remove tag
tag @a[tag=alert] remove alert