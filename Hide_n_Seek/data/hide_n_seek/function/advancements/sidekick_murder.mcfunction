#reset advancement
advancement revoke @s only hide_n_seek:sidekick_murder

#let the killer know that the seekers know
playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 2 2 1
title @s times 1s 3s 1s
title @s subtitle [{"text":"They ","color":"white"},{"text":"KNOW","color":"light_purple"}]
title @s title ""

#notify seekers of murder
title @a[team=Seekers] times 1s 3s 1s
title @a[team=Seekers] subtitle [{"text":"A ","color":"white"},{"text":"Seeker Sidekick ","color":"light_purple"},{"text":"has been killed in cold blood","color":"white"}]
title @a[team=Seekers] title ""
