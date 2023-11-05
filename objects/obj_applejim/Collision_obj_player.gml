if (obj_player.state == 15 && state != 98 && state != 200)
{
    state = 98
    obj_player.state = 0
    hp -= 1
    stunned = 100
}
if (state == 200)
{
    with (obj_player)
    {
        if (state == 6 || state == 7)
        {
            scr_sound(18)
            obj_player.grav = 0.5
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            if (x != other.x)
                obj_player.hsp = (sign((x - other.x)) * 5)
            else
                obj_player.hsp = 5
            vsp = -3
            image_index = 0
            obj_player.image_index = 0
            obj_player.flash = 1
            state = 65
        }
        else if (state != 66 && hurted == 0 && cutscene == 0 && state != 65)
        {
            scr_sound(22)
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
            instance_create(x, y, obj_spikehurteffect)
            state = 66
            image_index = 0
            flash = 1
        }
    }
}
