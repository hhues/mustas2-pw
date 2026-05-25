scoreboard objectives add vdvcasttemp dummy
scoreboard objectives add bf_place_delay dummy

execute unless score #bf_setting bf_place_delay matches 1 run scoreboard players set #bf_setting bf_place_delay 0

advancement revoke @a only bannerflags:bannerrotate
advancement revoke @a only bannerflags:bannerrotate2
advancement revoke @a only bannerflags:bannerflip
advancement revoke @a only bannerflags:bannerflip2
advancement revoke @a only bannerflags:bannerscale
advancement revoke @a only bannerflags:bannerscale2
advancement revoke @a only bannerflags:bannerplace

function bannerflags:banner_break_check