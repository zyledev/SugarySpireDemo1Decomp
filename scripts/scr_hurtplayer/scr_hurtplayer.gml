function scr_hurtplayer(argument0) //scr_hurtplayer
{
    with (argument0)
    {
        if (state == (94 << 0) || (state == (56 << 0) && sprite_index == spr_swingding))
        {
            if (state == (56 << 0))
            {
                var _gby = (object_index == obj_player ? 1 : 2)
                if (state == (4 << 0) && grabbedby == _gby)
                    instance_destroy();
            }
            state = (120 << 0)
            sprite_index = choose(spr_parry1, spr_parry2, spr_parry3)
            image_index = 0
            image_speed = 0.35
            taunttimer = 20
            movespeed = 8
            parry_inst = -4
            parry_count = parry_max
            image_xscale = other.xscale
            flash = 1
        }
        else if (state == (120 << 0))
        {
        }
        else if (state == (61 << 0) || state == (43 << 0))
        {
        }
        else if (state == (10 << 0))
        {
        }
        else if (state == (9 << 0))
        {
        }
        else if ((state == (33 << 0) || state == (34 << 0) || state == (27 << 0)) && cutscene == 0)
        {
        }
        else if (state == (13 << 0))
        {
        }
        else if (state == (70 << 0))
        {
        }
        else if (state == (30 << 0))
        {
        }
        else if (state == (36 << 0) && hurted == 0)
        {
        }
        else if (state == (23 << 0))
        {
        }
        else if (state == (89 << 0))
        {
        }
        else if (state == (24 << 0))
        {
            hsp = ((-xscale) * 4)
            vsp = -5
            state = (82 << 0)
            sprite_index = spr_bump
            alarm[5] = 2
            alarm[8] = 60
            alarm[7] = 120
            hurted = 1
        }
        else if (state == (5 << 0))
        {
        }
        else if (pizzashield == 1)
        {
            pizzashield = 0
            sprite_index = spr_pizzashield_collectible
            hsp = ((-xscale) * 4)
            vsp = -5
            state = (82 << 0)
            sprite_index = spr_bump
            invhurt_buffer = 120
            alarm[8] = 60
            alarm[7] = 120
            hurted = 1
            scr_soundeffect(sound_touchspike)
        }
        else if (state != (83 << 0) && state != (4 << 0) && (hurted == 0 || state == (19 << 0) || state == (21 << 0) || state == (22 << 0)) && cutscene == 0)
        {
            global.combo = 0
            global.combotime = 0
            global.heattime = 0
            global.style -= 25
            if (character == "V")
                global.playerhealth -= 25
            if (state == (4 << 0))
            {
                if (object_index == obj_player)
                    y = obj_player2.y
                else
                    y = obj_player.y
            }
            scr_soundeffect(sound_touchspike)
            alarm[8] = 100
            alarm[7] = 50
            hurted = 1
            if (xscale == other.image_xscale)
                sprite_index = spr_hurtjump
            else
                sprite_index = spr_hurt
            movespeed = 12
            vsp = -5
            timeuntilhpback = 300
            instance_create(x, y, obj_spikehurteffect)
            state = (83 << 0)
            image_index = 0
            flash = 1
            global.hurtcounter += 1
            var loseamount = (50 * (global.stylethreshold + 1))
            if (global.pizzadelivery == 0)
            {
                if (global.collect > loseamount)
                    global.collect -= loseamount
                else
                    global.collect = 0
            }
            if (global.pizzadelivery == 0)
            {
                if (global.collect != 0)
                {
                    if (character == "P" || character == "V")
                    {
                        repeat (10)
                            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
                    }
                    else
                    {
                        repeat (10)
                            instance_create(x, y, obj_pizzaloss)
                    }
                }
            }
        }
    }
}

