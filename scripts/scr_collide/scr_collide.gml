var _temp_local_var_3;
function scr_collide() //scr_collide
{
    grounded = 0
    var _temp_local_var_3 = abs(vsp)
    if (abs(vsp) <= 0)
    {
    }
    else
    {
        repeat(abs(vsp))
        {
            if (!(scr_solid(x, (y + sign(vsp)))))
            {
                y += sign(vsp)
                var _temp_local_var_3 = (abs(vsp) - 1)
                if (abs(vsp) - 1)
                    continue
                break
            }
            else
                vsp = 0
        }
    }
    var _temp_local_var_3 = abs(hsp)
    if (abs(hsp) <= 0)
    {
    }
    else
    {
        repeat(abs(hsp))
        {
            if (scr_solid((x + sign(hsp)), y) && (!(scr_solid((x + sign(hsp)), (y - 1)))))
                y--
            if ((!(scr_solid((x + sign(hsp)), y))) && (!(scr_solid((x + sign(hsp)), (y + 1)))) && scr_solid((x + sign(hsp)), (y + 2)))
                y++
            if (!(scr_solid((x + sign(hsp)), y)))
            {
                x += sign(hsp)
                var _temp_local_var_3 = (abs(hsp) - 1)
                if (abs(hsp) - 1)
                    continue
                break
            }
            else
                hsp = 0
        }
    }
    if (vsp < 10)
        vsp += grav
    grounded = scr_solid(x, (y + 1))
}

