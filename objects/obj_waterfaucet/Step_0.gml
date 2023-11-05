if ((sprite_index == spr_onoffswitch_bluetored || sprite_index == spr_onoffswitch_redtoblue) && floor(image_index) >= (image_number - 1))
{
    if (sprite_index == spr_onoffswitch_bluetored)
        sprite_index = spr_onoffswitch_red
    else
        sprite_index = spr_onoffswitch_blue
}
var player = instance_nearest(x, y, obj_player)
player = obj_player
if (player.state == 15 && place_meeting(x, y, player))
{
    with (player)
    {
        if (state == 15)
        {
            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4)
            suplexdashtimer = 7
            image_index = 0
            state = (50 << 0)
            movespeed = 0.1
            vsp = -3
            global.combofreeze = 10
            if (sprite_index == spr_onoffswitch_blue)
                sprite_index = spr_onoffswitch_bluetored
            else
                sprite_index = spr_onoffswitch_redtoblue
            can_switch = 0
            alarm[0] = 50
        }
    }
}
