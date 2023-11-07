function scr_player_victory() //gml_Script_scr_player_victory
{
	
    hsp = 0
    mach2 = 0
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 1
    machhitAnim = 0
    if place_meeting(x, y, obj_keydoor)
    {
		x = approach(x, instance_place(x,y,obj_keydoor).x + 50, 3) 
        sprite_index = spr_player_enterkey
	}
    if place_meeting(x, y, obj_keydoorclock)
    {
		x = approach(x, instance_place(x,y,obj_keydoorclock).x + 75, 3) 
        sprite_index = spr_player_enterkey
	}
    if place_meeting(x, y, obj_startgate)
	{
		x = approach(x, instance_place(x,y,obj_startgate).x, 3) 
        sprite_index = spr_entergate
	}
    if (floor(image_index) == (image_number - 1))
        image_speed = 0
    else
        image_speed = 0.35
}

