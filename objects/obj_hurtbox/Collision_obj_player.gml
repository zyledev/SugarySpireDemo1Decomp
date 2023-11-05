if (obj_player.state != (105 << 0) && obj_player.state != (66 << 0))
{
    with (obj_player)
    {
        if ((state == 17 || state == 18 || state == 11) && cutscene == 0)
        {
        }
        else if (state == 20 && hurted == 0)
        {
        }
        else if (state == 8)
        {
        }
        else if (state == 6 || state == 7)
        {
        }
        else if (state != 66 && state != 44 && hurted == 0 && cutscene == 0 && state != 65 && state != 109)
        {
            scr_sound(54)
            global.hurtcounter += 1
            alarm[8] = 60
            alarm[7] = 120
            hurted = 1
            if (xscale == other.image_xscale)
                sprite_index = spr_hurtjump
            else
                sprite_index = spr_hurt
            movespeed = 8
            vsp = -5
            timeuntilhpback = 300
            if (global.collect > 100)
                global.collect -= 100
            else
                global.collect = 0
            if (global.collect != 0)
            {
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
            }
            else if (obj_player.shotgunAnim == 1)
                obj_player.shotgunAnim = 0
            instance_create(x, y, obj_spikehurteffect)
            state = 66
            image_index = 0
            flash = 1
            global.style -= 15
        }
    }
}
