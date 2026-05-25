
# Remove one item from the player
execute unless entity @s[gamemode=creative] run item modify entity @s weapon.mainhand bannerflags:remove_one

execute as @e[type=item_display,tag=BF_Flag1,tag=!BF_Flipped,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run data merge entity @s {transformation:{translation:[0.575f,-0.5f,0.05f],scale:[1.15f,1.15f,0.1f]},start_interpolation:0,interpolation_duration:15}
execute as @e[type=item_display,tag=BF_Flag2,tag=!BF_Flipped,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run data merge entity @s {transformation:{translation:[0.575f,-0.5f,-0.05f],scale:[1.15f,-1.15f,0.1f]},start_interpolation:0,interpolation_duration:15}

execute as @e[type=item_display,tag=BF_Flag1,tag=BF_Flipped,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run data merge entity @s {transformation:{translation:[0.575f,-0.5f,-0.05f],scale:[1.15f,1.15f,0.1f]},start_interpolation:0,interpolation_duration:15}
execute as @e[type=item_display,tag=BF_Flag2,tag=BF_Flipped,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] run data merge entity @s {transformation:{translation:[0.575f,-0.5f,0.05f],scale:[1.15f,-1.15f,0.1f]},start_interpolation:0,interpolation_duration:15}

tag @e[type=item_display,tag=BF_Flag1,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] add BF_BigFlag
tag @e[type=item_display,tag=BF_Flag2,tag=!BF_BigFlag,distance=..2,limit=1,sort=nearest] add BF_BigFlag

playsound block.amethyst_block.chime block @s ~ ~ ~ 100 0.8

advancement revoke @a only bannerflags:bannerscale2
advancement grant @s only gurkis:importantflag