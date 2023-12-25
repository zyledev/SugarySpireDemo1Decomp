scr_tvsprites()
if(sprite_index != spr_tvoff)
{
	
	siny = round(Wave(3, -3, 3, 0))
}
else
{
	if(siny != 0)
	{
		siny = approach(siny, 0, 0.2)
	}
}
if (room == steamy_1)
{
    global.srank = 8000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == entryway_1)
{
    global.srank = 6000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (showtext == 1)
{
    xi = (500 + random_range(1, -1))
    if (yi > 475)
        yi -= 5
}
if (showtext == 0)
{
    xi = (500 + random_range(1, -1))
    if (yi < 675)
        yi += 1
}
if (!((obj_player.state == 17 && obj_player.state == 18 && obj_player.state == 11)))
    once = 0
if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5
else
    alpha = 1
if (global.collect > global.arank && shownranka == 0)
{
    message = "YOU GOT ENOUGH FOR RANK A"
    showtext = 1
    alarm[0] = 200
    shownranka = 1
}
else if (global.collect > global.brank && shownrankb == 0)
{
    message = "YOU GOT ENOUGH FOR RANK B"
    showtext = 1
    alarm[0] = 200
    shownrankb = 1
}
else if (global.collect > global.crank && shownrankc == 0)
{
    message = "YOU GOT ENOUGH FOR RANK C"
    showtext = 1
    alarm[0] = 200
    shownrankc = 1
}
if (global.hurtcounter >= global.hurtmilestone)
{
    alarm[0] = 150
    if (obj_player.character == "P")
        character = "PIZZELLE"
    else
        character = "THE PIZZANO"
    message = (((("YOU HAVE HURT " + string(character)) + " ") + string(global.hurtmilestone)) + " TIMES...")
    global.hurtmilestone += 3
}
if (obj_player.state == 49)
{
    showtext = 1
    message = "KEY OBTAINED!"
    alarm[0] = 50
}
if (global.panic == 0)
{
    switch obj_player.state
    {
		case 62:
			tvcount = 500
			tvsprite = mach1spr
		break
		case 63:
			tvcount = 500
			tvsprite = mach2spr
		break
		case 83:
			tvcount = 500
			if obj_player.movespeed >= 12 tvsprite = mach4spr
			else tvsprit = mach3spr
		break
		
        case 66:
            tvcount = 500
            tvsprite = hurttvspr
            break
        case (117 << 0):
            tvcount = 500
            tvsprite = minecarttvspr
            break
        case 118:
            tvcount = 500
            tvsprite = firetvspr
            break
        case (20 << 0):
            tvcount = 500
            tvsprite = bombtvspr
            break
        case 110:
        case 111:
        case 100:
            tvcount = 500
            tvsprite = cottontvspr
            break
        default:
            if (tvsprite == idletvspr && tvcount < 1)
            {
                tvsprite = choose(tvchange1, tvchange2, tvchange2, tvchange1)
                image_index = 0
            }
            if (tvsprite != idletvspr)
                tvcount = 500
            if ((tvsprite == tvchange1 && floor(image_index) == (image_number - 1)) || (tvsprite == tvchange2 && floor(image_index) == (image_number - 1)))
            {
                tvcount = choose(500, 450, 400, 550)
                tvsprite = idletvspr
                image_index = 0
            }
            if (tvsprite == idletvspr)
                tvcount -= 1
            break
    }

}
else if (global.panic == 1)
    tvsprite = escapetvspr
if (global.key_inv == 1)
    invsprite = spr_invkey
else
    invsprite = spr_invempty
if (global.combotime != 0)
    combofade += 0.2
if (global.combotime == 1 && combofade > 1)
    combofade = 1
if (global.combotime == 0)
    combofade -= 0.05
if (global.combotime == 0 && combofade < 0)
    combofade = 0
if ((tvsprite == spr_pizzytvcotton && obj_player.state != 100 && obj_player.state != 110 && obj_player.state != 111) || (tvsprite == spr_pizzytvhurt && obj_player.state != 66) || (tvsprite == spr_pizzytvmine && obj_player.state != (117 << 0)) || (tvsprite == spr_pizzytvfire && obj_player.state != 118) || (tvsprite == spr_pizzytvbomb && obj_player.state != (20 << 0)))
    tvsprite = spr_pizzytv
if (tvsprite == spr_tvturnon && floor(image_index) == (image_number - 1))
    tvsprite = idletvspr
var roomname = room_get_name(room)
if (string_letters(roomname) == "tutorial")
    tvsprite = spr_tvstatic
sprite_index = tvsprite
