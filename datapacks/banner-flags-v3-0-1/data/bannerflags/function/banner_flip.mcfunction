
execute as @e[type=item_display,tag=BF_Flag1,tag=!BF_Flipped,tag=!BF_BigFlag,distance=..1.5,limit=1,sort=nearest] run data merge entity @s {transformation:{left_rotation:{angle:3.1415f,axis:[1.0f,0.0f,0.0f]},right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,-0.05f]},start_interpolation:0,interpolation_duration:15}
execute as @e[type=item_display,tag=BF_Flag2,tag=!BF_Flipped,tag=!BF_BigFlag,distance=..1.5,limit=1,sort=nearest] run data merge entity @s {transformation:{left_rotation:{angle:0.0f,axis:[1.0f,0.0f,0.0f]},right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.225f,0f,0.05f]},start_interpolation:0,interpolation_duration:15}

execute as @e[type=item_display,tag=BF_Flag1,tag=!BF_Flipped,tag=BF_BigFlag,distance=..1.5,limit=1,sort=nearest] run data merge entity @s {transformation:{left_rotation:{angle:3.1415f,axis:[1.0f,0.0f,0.0f]},right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.575f,-0.5f,-0.05f]},start_interpolation:0,interpolation_duration:15}
execute as @e[type=item_display,tag=BF_Flag2,tag=!BF_Flipped,tag=BF_BigFlag,distance=..1.5,limit=1,sort=nearest] run data merge entity @s {transformation:{left_rotation:{angle:0.0f,axis:[1.0f,0.0f,0.0f]},right_rotation:{angle:1.5708f,axis:[0.0f,0.0f,1.0f]},translation:[0.575f,-0.5f,0.05f]},start_interpolation:0,interpolation_duration:15}


tag @e[type=item_display,tag=BF_Flag1,tag=!BF_Flipped,distance=..1.5,limit=1,sort=nearest] add BF_Flipped
tag @e[type=item_display,tag=BF_Flag2,tag=!BF_Flipped,distance=..1.5,limit=1,sort=nearest] add BF_Flipped

playsound entity.item_frame.rotate_item block @s ~ ~ ~ 100 0.8

advancement revoke @a only bannerflags:bannerflip2

advancement grant @s only gurkis:flipit