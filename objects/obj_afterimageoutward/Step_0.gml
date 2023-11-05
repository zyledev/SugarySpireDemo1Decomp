if (playerid.state != 83 && playerid.state != 2 && playerid.state != 88 && playerid.state != 63 && playerid.state != 15 && playerid.state != 64 && playerid.state != 35 && playerid.state != 28 && playerid.state != 33 && playerid.state != 36 && playerid.state != 30 && playerid.state != 26 && playerid.state != 56 && playerid.state != 105 && playerid.state != 109 && playerid.state != 125 && playerid.state != 51 && playerid.state != 101 && playerid.state != (120 << 0) && global.cane == 0 && playerid.state != (110 << 0))
    vanish = 1
if (vanish == 1)
{
    if (gonealpha > 0)
        gonealpha -= 0.35
    else if (gonealpha <= 0)
        instance_destroy()
}
visible = playerid.visible
image_alpha = gonealpha
if (color == 1)
    realcol = make_color_rgb(232, 80, 152)
else if (color == 2)
    realcol = make_color_rgb(48, 168, 255)
image_blend = realcol