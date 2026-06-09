#alert hiders of their possible location leak and seekers of hiders within $(range) blocks
$execute at @a[team=Seekers] run playsound minecraft:block.amethyst_block.place master @a[team=Hiders,distance=0..$(range)] ~ ~ ~ 1 0.1 1
$execute at @e[team=Hiders] run playsound minecraft:block.amethyst_block.resonate master @a[team=Seekers,distance=0..$(range)] ~ ~ ~ 1 0.1 1
title @a times 1s 11s 1s
$execute at @a[team=Seekers] run title @a[team=Hiders,distance=0..$(range)] actionbar [{"text":"A nearby seeker knows you're within ","color":"white"},{"text":"$(range)","color":"red"},{ text:" blocks of them","color":"white"}]
$execute at @e[team=Hiders] run title @a[team=Seekers,distance=0..$(range)] actionbar [{"text":"There is a hider within ","color":"white"},{"text":"$(range)","color":"red"},{ text:" blocks of you","color":"white"}]
